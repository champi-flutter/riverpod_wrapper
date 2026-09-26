import 'package:riverpod_wrapper/src/edit_saved_pop_scope/use_case/input_boundary/update_edit_state_use_case.dart';

class EditController {
  EditController({required UpdateEditStateUseCase updateEditStateUseCase})
    : _updateEditStateUseCase = updateEditStateUseCase;

  final UpdateEditStateUseCase _updateEditStateUseCase;

  /// 編集されたことを伝える
  void notifyEdited() => _updateEditStateUseCase.execute(true);

  /// 編集が保存されたことを伝える
  void notifySaved() => _updateEditStateUseCase.execute(false);

  /// 編集が破棄されたことを伝える
  void notifyDiscarded() => _updateEditStateUseCase.execute(false);
}
