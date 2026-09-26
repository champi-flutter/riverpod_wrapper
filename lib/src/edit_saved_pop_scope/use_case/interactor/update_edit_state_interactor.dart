import 'package:riverpod_wrapper/src/edit_saved_pop_scope/use_case/input_boundary/update_edit_state_use_case.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/use_case/output_boundary/edit_presenter.dart';

class UpdateEditStateInteractor extends UpdateEditStateUseCase {
  UpdateEditStateInteractor({required EditPresenter editPresenter})
    : _presenter = editPresenter;

  final EditPresenter _presenter;

  @override
  void execute(bool newState) {
    _presenter.present(newState);
  }
}
