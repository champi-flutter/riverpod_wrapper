import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/start_listening_notification_use_case.dart';

part 'notification_view_model.g.dart';

@riverpod
class NotificationViewModel extends _$NotificationViewModel {
  @override
  Notified? build() {
    // 通知の購読を開始する
    _startListeningNotificationUseCase.execute();
    return null;
  }

  /// 通知購読開始フローの呼び出し口
  StartListeningNotificationUseCase get _startListeningNotificationUseCase =>
      ref.read(startListeningNotificationUseCaseProvider);

  /// [state] に通知を入れる
  void update(Notified notifiedInfo) {
    state = notifiedInfo;
  }

  /// [state] を空にする
  void clear(){
    state = null;
  }
}
