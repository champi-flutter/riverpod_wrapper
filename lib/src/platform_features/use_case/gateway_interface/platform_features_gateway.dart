
/// プラットフォームの機能を使用するためのインターフェース。
abstract class PlatformFeaturesGateway {
  // todo クリップボード
  /// クリップボードに文字列をセットする
  Future<void> copyToClipboard(String text);

  /// クリップボードから文字列を取得する
  Future<String?> pasteFromClipboard();
}