import 'package:flutter/foundation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/infra_interface/notification_repository.dart';

/// 通知機能管理クラス
class NotificationServiceImpl implements NotificationService{
  NotificationServiceImpl({
    required NotificationRepository notificationRepository,
  }) : _repository = notificationRepository;

  // todo 依存先
  /// キャッシュハンドラのインスタンス
  final NotificationRepository _repository;

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
    _repository.send(notifiedInfo);
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
