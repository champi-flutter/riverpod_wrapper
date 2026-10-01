import 'package:riverpod_wrapper/src/page_control_scope/use_case/input_boundary/navigate_page_use_case.dart';

class PageNavigationController {

  PageNavigationController({required NavigatePageUseCase navigatePageUseCase})
      : _navigatePageUseCase = navigatePageUseCase;

  final NavigatePageUseCase _navigatePageUseCase;

  void navigateTo(int targetIndex) => _navigatePageUseCase.execute(targetIndex);

  Future<void> navigateWithGuardTo(int targetIndex, {
    bool isGuardValid = true,
    required Future<bool> Function() onWillNavigate,
    Future<void> Function()? onAnyNavigated,
    Future<void> Function()? onApproved,
  }) async {
    if (isGuardValid) {
      // 引数で指定した遷移防御コールバックで、遷移するかを確認する
      final bool willNavigate = await onWillNavigate();
      // 遷移が承認された場合
      if (willNavigate) {
        if (onApproved != null) {
          await onApproved();
        }
      }
      // 遷移しない場合
      else {
        return;
      }
    }

    _navigatePageUseCase.execute(targetIndex);

    // 遷移後のコールバックが指定されている場合は起動する
    if (onAnyNavigated != null) {
      await onAnyNavigated();
    }
  }
}