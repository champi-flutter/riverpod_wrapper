import 'package:riverpod_wrapper/src/extended_pop_scope/presentation/view_model/scope_focus_view_model.dart';

class ExtendedPopController {
  ExtendedPopController({
    required  ScopeFocusViewModel scopeFocusViewModelNotifier,
  }) : _scopeFocusViewModel = scopeFocusViewModelNotifier;

  // final PendPopUseCase _pendPopUseCase;

  final ScopeFocusViewModel _scopeFocusViewModel;

  void requestPop() => _scopeFocusViewModel.update(ScopeStatus.popRequested);

  void approvePop() => _scopeFocusViewModel.update(ScopeStatus.popApproved);
}
