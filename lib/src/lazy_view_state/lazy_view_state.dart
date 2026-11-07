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

class OnetimeLazyViewState<Data> extends LazyViewState<Data> {
  /// Notifier の build でこの型（[OnetimeLazyViewState.placeholder]）の
  /// ViewState が返された後に起動する、初期化処理を呼ぶコールバック。
  final void Function()? onBuilt;

  /// 表示値として有効なデータを入れるコンストラクタ
  const OnetimeLazyViewState.data(super.data)
    : onBuilt = null,
      super.data();

  /// データ未受信時の仮データを設定するコンストラクタ
  const OnetimeLazyViewState.placeholder(
    super.data, {
    required this.onBuilt,
  }) : super.placeholder();

  /// エラーや例外が発生した情報を入れるコンストラクタ
  const OnetimeLazyViewState.error(super.data, {super.errorMsg = ""})
    : onBuilt = null,
        super.error();

  /// データの受信状態に応じたアクションを設定する
  @override
  R when<R>({
    required R Function(Data data) onReceived,
    required R Function(Data placeholder) onLoading,
    required R Function(Data placeholder, String errorMsg) onError,
  }) {
    switch (_lazyStatus) {
      case _LazyStatus.received:
        return onReceived(data);
      case _LazyStatus.loading:
        // loading 状態で呼ばれた際に、onBuilt を起動する
        onBuilt?.call();
        return onLoading(data);
      case _LazyStatus.error:
        return onError(data, errorMsg);
    }
  }
}
