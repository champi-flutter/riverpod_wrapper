
abstract interface class PendingNavigationController {
  /// `PageNavigationController.navigateWithGuardTo` で pend された遷移を実行する
  void approveNavigation();
}