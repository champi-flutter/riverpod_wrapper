
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

/// 通知を受け取り、画面に伝えるクラス
abstract class NotificationPresenter {
  void present(Notified notifiedInfo);
}