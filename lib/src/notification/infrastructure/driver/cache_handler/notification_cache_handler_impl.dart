import 'package:custom_core_types/custom_core_types.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/infrastructure/driver/cache_handler/custom_cache_handler/notification_cache.dart';
import 'package:riverpod_wrapper/src/notification/infrastructure/gateway/driver_interface/cache_handler_interface/notification_cache_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/infra_interface/notification_stream_handler.dart';

class NotificationCacheHandlerImpl
    extends BaseCacheHandler<int, Notified, NotificationCache>
    implements NotificationCacheHandler {
  NotificationCacheHandlerImpl({
    required NotificationStreamHandler notificationStreamHandler,
    required AutoIntegerKeyHolder notificationCacheKeyHolder,
  }) : _streamHandler = notificationStreamHandler,
       _cacheKeyHolder = notificationCacheKeyHolder,
       _keyOnOutput = null,
       super(NotificationCache());

  final NotificationStreamHandler _streamHandler;

  final AutoIntegerKeyHolder _cacheKeyHolder;

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

  /// 現在の [_keyOnOutput] の通知の完了を知り、溜まっている [output] を外から呼ぶ
  @override
  Future<void> callNextOutput() async {
    try {
      final int? evictedKey = _keyOnOutput;
      // ここは1つの通知が完了した時に呼ばれるので、この時点でその key がない場合は実装ミス
      if (evictedKey == null) {
        throw StateError("callOutput の段階で対象の key が null です。");
      } else {
        cache.evictConsumedCache(evictedKey);
        // output 可能にする
        _keyOnOutput = null;
      }
    } catch (e, st) {
      throw Exception("[NotificationCacheHandler] $e\n$st");
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
