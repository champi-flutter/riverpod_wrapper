import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/launch_support_providers.dart';
import 'package:riverpod_wrapper/src/key_holder/explicit_key_holder.dart';
import 'package:riverpod_wrapper/src/loading/use_case/input_boundary/loading_service.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';

/// ローディング処理フローの実装クラス
class LoadingInteractor implements LoadingService {
  LoadingInteractor({
    required LoadingPresenter loadingPresenter,
    required ExplicitKeyHolder loadingKeyHolder,
  }) : _loadingPresenter = loadingPresenter,
       _loadingKeyHolder = loadingKeyHolder;

  /// 表示への反映
  final LoadingPresenter _loadingPresenter;

  /// 固有ローディングの識別子の管理元
  final ExplicitKeyHolder _loadingKeyHolder;

  /// ローディング処理フローを実装
  ///
  /// [keyAlias] を指定することで、固有のローディングを起動する。
  @override
  Future<T> loadAsync<T>(
    Future<T> Function() action, {
    String keyAlias = "",
  }) async {
    final int? key;
    // keyAlias が指定された場合は、int の識別子に変換して、固有ローディングの準備をする
    if(keyAlias != "") {
      key = _loadingKeyHolder.key(keyAlias);
      if(key == null){
        throw Exception("");
      }
    }
    // 未指定なら keyAlias = "" => 全体ローディング
    else {
      key = null;
    }
    // ローディング開始
    _loadingPresenter.startLoading(key: key);
    // 処理本体
    final T result = await action();
    // ローディング終了
    _loadingPresenter.finishLoading(key: key);
    return result;
  }
}
