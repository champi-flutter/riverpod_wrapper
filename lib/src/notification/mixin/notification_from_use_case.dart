import 'package:flutter/foundation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

mixin NotificationFromUseCase {

  /// 通知機能呼び出し口
  @visibleForOverriding
  NotificationService get notificationService;

  // todo 通知関連
  /// エラー通知メソッド
  @protected
  void _notifyError({
    required String content,
    bool specifiesLayer = false,
  })
  // 折りたたみ用
  {
    notificationService.notifyInfo(
      layer: specifiesLayer ? NotificationFrom.useCase : null,
      type: NotificationType.error,
      notification: content,
    );
  }

  /// リポジトリからのフェッチのエラーの [Exception] のテンプレート
  Exception _fetchError({
    String? details,
    required String? methodName,
  }) =>
      Exception("FETCH_ERROR: DataRepository.${methodName ?? "??"}\n$details");
}