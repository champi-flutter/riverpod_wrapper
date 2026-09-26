import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/presentation/controller/edit_controller.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/presentation/presenter/edit_presenter_impl.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/presentation/view_model/edit_view_model.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/use_case/input_boundary/update_edit_state_use_case.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/use_case/interactor/update_edit_state_interactor.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/use_case/output_boundary/edit_presenter.dart';

part 'edit_saved_pop_scope_providers.g.dart';

// presentation
// コントローラ
@riverpod
EditController editController(Ref ref) => EditController(
  updateEditStateUseCase: ref.watch(updateEditStateUseCaseProvider),
);
// Presenter
@riverpod
EditPresenter editPresenter(Ref ref) =>
    EditPresenterImpl(editViewModel: ref.watch(editViewModelProvider.notifier));

// use_case
@riverpod
UpdateEditStateUseCase updateEditStateUseCase(Ref ref) =>
    UpdateEditStateInteractor(editPresenter: ref.watch(editPresenterProvider));
