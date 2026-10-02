import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/controller/non_export/pending_navigation_controller.dart';

/// ページ制御クラス
class PageNavigationControllerImpl implements PageNavigationController, PendingNavigationController{
  PageNavigationControllerImpl({
    required PageIndexViewModel pageIndexViewModelNotifier,
    required ExtendedPopController extendedPopController,
  }) : _pageIndexViewModel = pageIndexViewModelNotifier,
        _extendedPopController = extendedPopController;

  final PageIndexViewModel _pageIndexViewModel;

  final ExtendedPopController _extendedPopController;

  /// [ControlledPageView] で管理しているページを、指定インデックスに変更する
  @override
  void navigateAnywayTo(int targetIndex) {
    _pageIndexViewModel.update(targetIndex);
  }

  /// [ControlledPageView.withGuard] で管理しているページを、指定インデックスに変更する
  @override
  void navigateWithGuardTo(int targetIndex) {
    _pageIndexViewModel.pend(targetIndex);
    _extendedPopController.requestPop();
  }

  @override
  void approveNavigation() {
    _pageIndexViewModel.apply();
  }
}
