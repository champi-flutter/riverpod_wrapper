import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/stream_handler/notification_stream_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/start_listening_notification_use_case.dart';
import 'package:riverpod_wrapper/src/notification/use_case/output_boundary/notification_presenter.dart';

/// 通知購読開始フローを実装するクラス
class StartListeningNotificationInteractor
    implements StartListeningNotificationUseCase {
  StartListeningNotificationInteractor({
    required NotificationStreamHandler notificationStreamHandler,
    required NotificationPresenter notificationPresenter,
  }) : _streamHandler = notificationStreamHandler,
       _presenter = notificationPresenter;

  /// ストリームハンドラの呼び出し口
  final NotificationStreamHandler _streamHandler;

  final NotificationPresenter _presenter;

  /// 通知購読開始フローの実装
  @override
  void execute() {
    // 購読を開始
    _streamHandler.listen(
      // ストリームに通知が流れてきたときのコールバックを実装
      onData: (Notified notified) {
        // Presenter に通知情報を伝える
        _presenter.present(notified);
      },
    );
  }
}
