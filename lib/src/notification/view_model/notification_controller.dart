import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/notify_completed_use_case.dart';
import 'package:riverpod_wrapper/src/notification/view_model/notification_view_model.dart';

/// 通知が閉じられたことを伝えるクラス
class NotificationController {
  NotificationController({
    required NotifyCompletedUseCase notifyCompletedUseCase,
    required NotificationViewModel notificationViewModel,
  }) : _notifyCompletedUseCase = notifyCompletedUseCase,
       _viewModel = notificationViewModel;

  final NotifyCompletedUseCase _notifyCompletedUseCase;

  /// VM へのアクセス
  final NotificationViewModel _viewModel;

  /// 通知が閉じられたことを伝える
  void notifyCompleted() {
    // VM の state を null にする
    _viewModel.clear();
    // 通知の完了を報告する
    _notifyCompletedUseCase.execute();
  }
}
