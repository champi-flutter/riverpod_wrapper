
/// ローディング機能の呼び出し元
abstract class LoadingService {
  /// ローディング処理
  Future<T> loadAsync<T>(Future<T> Function() action);
}