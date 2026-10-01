import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/controller/edit_controller.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/presenter/edit_presenter_impl.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/view_model/edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/use_case/input_boundary/update_edit_state_use_case.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/use_case/interactor/update_edit_state_interactor.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/use_case/output_boundary/edit_presenter.dart';

part 'alert_saved_scope_providers.g.dart';

// presentation
// コントローラ
@riverpod
EditController editController(Ref ref, Token token) => EditController(
  updateEditStateUseCase: ref.watch(updateEditStateUseCaseProvider(token)),
);
// Presenter
@riverpod
EditPresenter editPresenter(Ref ref, Token token) =>
    EditPresenterImpl(editViewModel: ref.watch(editViewModelProvider(token).notifier));

// use_case
@riverpod
UpdateEditStateUseCase updateEditStateUseCase(Ref ref, Token token) =>
    UpdateEditStateInteractor(editPresenter: ref.watch(editPresenterProvider(token)));
