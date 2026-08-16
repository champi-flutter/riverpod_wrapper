import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/providers.dart';
import 'package:riverpod_wrapper/src/loading/use_case/input_boundary/loading_use_case.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';

/// ローディング処理フローの実装クラス
class LoadingInteractor implements LoadingUseCase {
  LoadingInteractor({required LoadingPresenter loadingPresenter})
    : _loadingPresenter = loadingPresenter;

  /// 表示への反映
  final LoadingPresenter _loadingPresenter;

  /// ローディング処理フローを実装
  @override
  Future<T> loadAsync<T>(Future<T> Function() action) async {
    // ローディング開始
    _loadingPresenter.startLoading();
    // 処理本体
    final T result = await action();
    // ローディング終了
    _loadingPresenter.finishLoading();
    return result;
  }
}
