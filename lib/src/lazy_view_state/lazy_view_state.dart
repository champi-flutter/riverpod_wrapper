

/// データ受信状態
enum _LazyStatus { received, loading, error }

/// 遅延初期化を行う ViewModel の値の型
class LazyViewState<Data> {
  /// 表示値として有効なデータを入れるコンストラクタ
  const LazyViewState.data(this.data)
      : _lazyStatus = _LazyStatus.received,
        errorMsg = "";

  /// データ未受信時の仮データを設定するコンストラクタ
  const LazyViewState.placeholder(this.data)
      : _lazyStatus = _LazyStatus.loading,
        errorMsg = "";

  /// エラーや例外が発生した情報を入れるコンストラクタ
  const LazyViewState.error(this.data, {this.errorMsg = ""})
      : _lazyStatus = _LazyStatus.error;

  /// データの受信状態に応じたアクションを設定する
  R when<R>({
    required R Function(Data data) onReceived,
    required R Function(Data placeholder) onLoading,
    required R Function(Data placeholder, String errorMsg) onError,
  }) {
    return switch (_lazyStatus) {
      _LazyStatus.received => onReceived(data),
      _LazyStatus.loading => onLoading(data),
      _LazyStatus.error => onError(data, errorMsg),
    };
  }

  /// データの受信状態
  final _LazyStatus _lazyStatus;

  /// 監視されるデータ
  final Data data;

  /// エラーメッセージ
  final String errorMsg;
}