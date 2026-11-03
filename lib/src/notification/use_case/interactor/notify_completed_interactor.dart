import 'package:riverpod_wrapper/src/notification/infrastructure/gateway/driver_interface/cache_handler_interface/notification_cache_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/infra_interface/notification_repository.dart';
import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/notify_completed_use_case.dart';


/// 通知完了報告フローを実装するクラス
class NotifyCompletedInteractor implements NotifyCompletedUseCase {
  NotifyCompletedInteractor({
    required NotificationRepository notificationRepository,
  }) : _repository = notificationRepository;

  /// インフラ層へのアクセス
  final NotificationRepository _repository;

  /// 通知完了報告フローを実装
  @override
  void execute() {
    _repository.callNextOutput();
  }
}
