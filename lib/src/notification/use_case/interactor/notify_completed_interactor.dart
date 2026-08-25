import 'package:riverpod_wrapper/src/notification/use_case/handler/cache_handler/notification_cache_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/notify_completed_use_case.dart';


/// 通知完了報告フローを実装するクラス
class NotifyCompletedInteractor implements NotifyCompletedUseCase {
  NotifyCompletedInteractor({
    required NotificationCacheHandler notificationCacheHandler,
  }) : _cacheHandler = notificationCacheHandler;

  /// 通知のキャッシュの管理元
  final NotificationCacheHandler _cacheHandler;

  /// 通知完了報告フローを実装
  @override
  void execute() {
    _cacheHandler.callOutput();
  }
}
