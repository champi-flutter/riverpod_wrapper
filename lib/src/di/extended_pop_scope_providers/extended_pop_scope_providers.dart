import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/src/extended_pop_scope/presentation/controller/pop_scope_focus_controller.dart';
import 'package:riverpod_wrapper/src/extended_pop_scope/presentation/view_model/scope_focus_view_model.dart';

part 'extended_pop_scope_providers.g.dart';

@riverpod
PopScopeFocusController popScopeFocusController(Ref ref) =>
    PopScopeFocusController(scopeFocusViewModelNotifier: ref.watch(scopeFocusViewModelProvider.notifier));

// @riverpod
// PopScopeFocusPresenter popScopeFocusPresenter(Ref ref) =>
//     PopScopeFocusPresenterImpl(
//       scopeFocusViewModel: ref.watch(scopeFocusViewModelProvider.notifier),
//     );
//
// @riverpod
// PendPopUseCase pendPopUseCase(Ref ref) =>
//     PendPopInteractor(
//       popScopeFocusPresenter: ref.watch(popScopeFocusPresenterProvider),
//     );
