
abstract class NotificationRepository {

  /// 現在行っている通知の完了を伝え、溜まっている通知の出力を促す
  Future<void> callNextOutput();
}