
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/providers.dart';
import 'package:riverpod_wrapper/src/loading/use_case/input_boundary/loading_use_case.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';

class LoadingInteractor implements LoadingUseCase{

  LoadingInteractor(this._ref);

  final Ref _ref;

  LoadingPresenter get _loadingPresenter => _ref.read(loadingPresenterProvider);

  /// ローディング処理
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