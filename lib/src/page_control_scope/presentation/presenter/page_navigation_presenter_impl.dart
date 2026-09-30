import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_model/page_index_view_model.dart';
import 'package:riverpod_wrapper/src/page_control_scope/use_case/output_boundary/page_navigation_presenter.dart';

class PageNavigationPresenterImpl implements PageNavigationPresenter {
  PageNavigationPresenterImpl({required PageIndexViewModel pageIndexViewModel})
    : _pageIndexVMNotifier = pageIndexViewModel;

  final PageIndexViewModel _pageIndexVMNotifier;

  @override
  void present(int targetIndex) {
    _pageIndexVMNotifier.update(targetIndex);
  }
}
