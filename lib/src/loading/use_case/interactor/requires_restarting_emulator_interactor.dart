import 'package:riverpod_wrapper/src/loading/use_case/input_boundary/requires_restarting_emulator_use_case.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';

/// エミュレータを再起動する必要があることを知らせる処理フローを実装するクラス
class RequiresRestartingEmulatorInteractor
    implements RequiresRestartingEmulatorUseCase {
  RequiresRestartingEmulatorInteractor({
    required LoadingPresenter loadingPresenter,
  }) : _presenter = loadingPresenter;

  final LoadingPresenter _presenter;

  @override
  void execute() {
    _presenter.onResetData();
  }
}
