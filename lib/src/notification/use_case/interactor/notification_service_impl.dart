import 'package:flutter/foundation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

/// 通知機能管理クラス
class NotificationServiceImpl implements NotificationService{
  // NotificationServiceImpl({
  //   required NotificationStreamHandler notificationStreamHandler,
  // }) : _streamHandler = notificationStreamHandler;
  // final NotificationStreamHandler _streamHandler;

  /// 内部システムから通知を送信するメソッド
  ///
  /// 2026/04/24 変更: インターフェースを変更
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

    // todo （2026/08/22）＞＞
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
