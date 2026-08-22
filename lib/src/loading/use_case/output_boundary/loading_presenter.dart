
/// ローディング処理の出力
abstract class LoadingPresenter {
  /// ローディングを1つ開始する
  ///
  /// [key] が指定された場合、固有ローディングを開始する。
  void startLoading({int? key});

  /// ローディングを1つ終了する
  ///
  /// [key] が指定された場合、固有ローディングを終了する。
  void finishLoading({int? key});

  /// クラスごとの初期化完了フラグを設置するメソッド
  ///
  /// ここで設置したフラグを [getReady] で回収するまでアプリがローディングし続ける。
  void setReady({required Type classType});

  /// クラスごとの初期化完了フラグを立てるメソッド
  void getReady({required Type classType});

  /// エミュレータのデータをリセットした際の処理
  void onResetData();
}