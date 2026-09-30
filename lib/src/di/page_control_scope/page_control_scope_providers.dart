import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/controller/page_navigation_controller.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/presenter/page_navigation_presenter_impl.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_model/page_index_view_model.dart';
import 'package:riverpod_wrapper/src/page_control_scope/use_case/input_boundary/navigate_page_use_case.dart';
import 'package:riverpod_wrapper/src/page_control_scope/use_case/interactor/navigate_page_interactor.dart';
import 'package:riverpod_wrapper/src/page_control_scope/use_case/output_boundary/page_navigation_presenter.dart';

part 'page_control_scope_providers.g.dart';

@riverpod
PageNavigationController pageNavigationController(Ref ref) =>
    PageNavigationController(
      navigatePageUseCase: ref.watch(navigatePageUseCaseProvider),
    );

@riverpod
PageNavigationPresenter pageNavigationPresenter(Ref ref) =>
    PageNavigationPresenterImpl(
      pageIndexViewModel: ref.watch(pageIndexViewModelProvider.notifier),
    );

@riverpod
NavigatePageUseCase navigatePageUseCase(Ref ref) => NavigatePageInteractor();
