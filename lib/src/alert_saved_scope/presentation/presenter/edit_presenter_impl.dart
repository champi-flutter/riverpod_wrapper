import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/view_model/edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/use_case/output_boundary/edit_presenter.dart';

class EditPresenterImpl implements EditPresenter {
  EditPresenterImpl({required EditViewModel editViewModel})
    : _editVMNotifier = editViewModel;

  final EditViewModel _editVMNotifier;

  @override
  void present(bool newState) {
    _editVMNotifier.update(newState);
  }
}
