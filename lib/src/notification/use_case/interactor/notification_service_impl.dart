import 'package:flutter/foundation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/cache_handler/notification_cache_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/stream_handler/notification_stream_handler.dart';

/// 通知機能管理クラス
class NotificationServiceImpl implements NotificationService{
  NotificationServiceImpl({
    required NotificationCacheHandler notificationCacheHandler,
  }) : _cacheHandler = notificationCacheHandler;

  // todo 依存先
  /// キャッシュハンドラのインスタンス
  final NotificationCacheHandler _cacheHandler;

  /// 内部システムから通知を送信するメソッド
  @override
  void notifyInfo({
    NotificationFrom? layer,
    required NotificationType type,
    required String notification,
  })
  // 折りたたみ用
  {
    final Notified notifiedInfo = (
    layer: layer,
    type: type,
    notification: notification,
    );
    // キャッシュに通知を追加する
    _cacheHandler.add(notifiedInfo);
    _print("通知リスナーが発火");
  }
}

/// printメソッド [通知機能管理クラス]
void _print(String s1, [String? s2, String? s3, String? s4, String? s5]) {
  if (kDebugMode) {
    print("");
    print("[通知機能管理クラス]　" + s1);
    if (s2 != null) print("[通知機能管理クラス]　" + s2);
    if (s3 != null) print("[通知機能管理クラス]　" + s3);
    if (s4 != null) print("[通知機能管理クラス]　" + s4);
    if (s5 != null) print("[通知機能管理クラス]　" + s5);
    print("");
  }
}
