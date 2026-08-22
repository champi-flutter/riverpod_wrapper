
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/key_holder/explicit_key_holder.dart';
import 'package:riverpod_wrapper/src/loading/use_case/interactor/loading_interactor.dart';
import 'package:riverpod_wrapper/src/loading/use_case/interactor/requires_restarting_emulator_interactor.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';
import 'package:riverpod_wrapper/src/loading/view_model/general_loading_view_model.dart';
import 'package:riverpod_wrapper/src/loading/view_model/loading_presenter_impl.dart';
import 'package:riverpod_wrapper/src/loading/view_model/specific_loading_view_model.dart';

part 'loading_providers.g.dart';

/// 固有ローディングの key 管理オブジェクトを提供する Provider
final Provider<ExplicitKeyHolder> loadingKeyHolderProvider = explicitKeyHolder();

/// ローディング処理フロー
@riverpod
LoadingService loadingService(Ref ref) =>
    LoadingInteractor(loadingPresenter: ref.watch(loadingPresenterProvider),
      loadingKeyHolder: ref.watch(loadingKeyHolderProvider),
    );

/// ローディングの表示への反映ポート
@riverpod
LoadingPresenter loadingPresenter(Ref ref) => LoadingPresenterImpl(
  loadingViewModel: ref.watch(generalLoadingViewModelProvider.notifier),
  readSpecificLoadingViewModel: (int key) =>specificLoadingViewModelPort(ref, key),
);

/// エミュレータを再起動する必要があることを知らせる処理フロー
@riverpod
RequiresRestartingEmulatorUseCase requiresRestartingEmulatorUseCase(Ref ref) =>
    RequiresRestartingEmulatorInteractor(
      loadingPresenter: ref.watch(loadingPresenterProvider),
    );