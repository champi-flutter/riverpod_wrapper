
/// ローディング機能の呼び出し元
abstract class LoadingUseCase {
  /// ローディング処理
  Future<T> loadAsync<T>(Future<T> Function() action);
}