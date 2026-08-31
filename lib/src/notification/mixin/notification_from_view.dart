
import 'package:flutter/foundation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

mixin NotificationFromView {

  /// 通知機能呼び出し口
  @visibleForOverriding
  NotificationService get notificationService;

  // todo 通知関連
  /// エラー通知メソッド
  @protected
  void notifyError({
    required String content,
  })
  // 折りたたみ用
  {
    notificationService.notifyInfo(
      layer: null,
      type: NotificationType.error,
      notification: content,
    );
  }

  /// 書き換え完了通知メソッド
  @protected
  void notifySuccess({
    required String content,
  })
  // 折りたたみ用
  {
    notificationService.notifyInfo(
      layer: null,
      type: NotificationType.success,
      notification: content,
    );
  }
}