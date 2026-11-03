
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

abstract class NotificationRepository {

  /// 通知情報を送る
  Future<void> send(Notified notified);

  /// 現在行っている通知の完了を伝え、溜まっている通知の出力を促す
  Future<void> callNextOutput();
}