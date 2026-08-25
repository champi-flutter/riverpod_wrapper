import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/type_definition/notification_typedef.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/cache_handler/notification_cache_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/stream_handler/notification_stream_handler.dart';

class NotificationCacheHandlerImpl extends NotificationCacheHandler {
  NotificationCacheHandlerImpl({
    required NotificationStreamHandler notificationStreamHandler,
    required AutoIntegerKeyHolder notificationCacheKeyHolder,
    required NotificationService notificationService,
  }) : _streamHandler = notificationStreamHandler,
       _cacheKeyHolder = notificationCacheKeyHolder,
       _notificator = notificationService,
       _keyOnOutput = null;

  final NotificationStreamHandler _streamHandler;

  final AutoIntegerKeyHolder _cacheKeyHolder;

  /// 通知呼び出し口
  ///
  /// 処理フローとは関係ない。
  final NotificationService _notificator;

  /// エラーを通知
  void _notifyError(String e){
    _notificator.notifyInfo(
      type: NotificationType.error,
      notification: "[NotificationCacheHandler] $e",
    );
  }

  /// 通知の追加処理を実装
  @override
  Future<void> add(Notified notified) async {
    // key を自動生成して Map にあてはめる
    final int cacheKey = _cacheKeyHolder.register();
    await update({cacheKey: notified});
  }

  /// 出力中のキャッシュの key
  ///
  /// `null` ならストリームにキャッシュを流すことができる。
  int? _keyOnOutput;

  /// [output] を外から呼ぶ
  @override
  Future<void> callOutput() async {
    try {
      final int? evictedKey = _keyOnOutput;
      if (evictedKey == null) {
        throw Exception("callOutput の段階で対象の key が null です。");
      } else {
        cache.evictConsumedCache(evictedKey);
        // output 可能にする
        _keyOnOutput = null;
      }
    } catch(e, st){
      _notifyError("$e\n$st");
    } finally {
      // 溜まっている通知がある場合はストリームに流す
      await output(cache.base);
    }
  }

  @override
  Future<void> output(Map<int, Notified> dataMap) async {
    // 溜まっている通知のうち、一番古い通知の key を取得し、対応する通知を流す
    final int? nextKey = _cacheKeyHolder.firstIn;
    // output 可能かどうか
    if (_keyOnOutput == null) {
      if (nextKey != null) {
        // key があった場合は、明示的に消費する
        final int consumedKey = _cacheKeyHolder.consume(nextKey);
        final Notified? nextValue = dataMap[consumedKey];
        if (nextValue != null) {
          // 一時的に output 不可にする
          _keyOnOutput = consumedKey;
          _streamHandler.add(nextValue);
        }
      }
    }
  }
}
