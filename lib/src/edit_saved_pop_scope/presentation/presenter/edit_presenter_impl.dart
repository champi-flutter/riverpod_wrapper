import 'package:riverpod_wrapper/src/edit_saved_pop_scope/use_case/output_boundary/edit_presenter.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/presentation/view_model/edit_view_model.dart';

class EditPresenterImpl implements EditPresenter {
  EditPresenterImpl({required EditViewModel editViewModel})
    : _editVMNotifier = editViewModel;

  final EditViewModel _editVMNotifier;

  @override
  void present(bool newState) {
    _editVMNotifier.update(newState);
  }
}
