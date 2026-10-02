import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/controller/non_export/page_navigation_controller_impl.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/controller/non_export/pending_navigation_controller.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/controller/page_navigation_controller.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/presenter/page_navigation_presenter_impl.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_model/page_index_view_model.dart';
import 'package:riverpod_wrapper/src/page_control_scope/use_case/input_boundary/navigate_page_use_case.dart';
import 'package:riverpod_wrapper/src/page_control_scope/use_case/interactor/navigate_page_interactor.dart';
import 'package:riverpod_wrapper/src/page_control_scope/use_case/output_boundary/page_navigation_presenter.dart';

part 'page_control_scope_providers.g.dart';

@riverpod
PageNavigationController pageNavigationController(Ref ref, Token token) =>
    PageNavigationControllerImpl(
      pageIndexViewModelNotifier: ref.watch(
        pageIndexViewModelProvider(token).notifier,
      ),
      extendedPopController: ref.watch(extendedPopControllerProvider(token)),
    );

@riverpod
PendingNavigationController pendingNavigationController(Ref ref, Token token) =>
    PageNavigationControllerImpl(
      pageIndexViewModelNotifier: ref.watch(
        pageIndexViewModelProvider(token).notifier,
      ),
      extendedPopController: ref.watch(extendedPopControllerProvider(token)),
    );

// @riverpod
// PageNavigationPresenter pageNavigationPresenter(Ref ref, Token token) =>
//     PageNavigationPresenterImpl(
//       pageIndexViewModel: ref.watch(pageIndexViewModelProvider(token).notifier),
//     );
//
// @riverpod
// NavigatePageUseCase navigatePageUseCase(Ref ref) => NavigatePageInteractor();
