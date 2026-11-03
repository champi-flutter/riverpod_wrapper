
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/infrastructure/gateway/driver_interface/cache_handler_interface/notification_cache_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/infra_interface/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository{

  NotificationRepositoryImpl({
    required NotificationCacheHandler notificationCacheHandler,
  }) : _cacheHandler = notificationCacheHandler;

  /// 通知のキャッシュの管理元
  final NotificationCacheHandler _cacheHandler;

  /// 通知情報を送る
  @override
  Future<void> send(Notified notified)async{
    await _cacheHandler.add(notified);
  }

  /// 現在行っている通知の完了を伝え、溜まっている通知の出力を促す
  @override
  Future<void> callNextOutput() async {
    await _cacheHandler.callNextOutput();
  }
}