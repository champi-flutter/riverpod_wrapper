
/// `PageNavigationController.navigateWithGuardTo` で pend されている遷移を
/// 実行するためのコントローラ
///
/// このパッケージ以外からの呼び出しを制限している。
abstract interface class PendingNavigationController {
  /// `PageNavigationController.navigateWithGuardTo` で pend された遷移を実行する
  void approveNavigation();

  /// `PageNavigationController.navigateWithGuardTo` で pend された遷移を中断する
  void cancelNavigation();
}