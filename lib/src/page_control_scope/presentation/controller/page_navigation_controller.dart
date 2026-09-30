import 'package:riverpod_wrapper/src/page_control_scope/use_case/input_boundary/navigate_page_use_case.dart';

class PageNavigationController {

  PageNavigationController({required NavigatePageUseCase navigatePageUseCase})
      : _navigatePageUseCase = navigatePageUseCase;

  final NavigatePageUseCase _navigatePageUseCase;

  void navigateTo(int targetIndex)=>_navigatePageUseCase.execute(targetIndex);
}