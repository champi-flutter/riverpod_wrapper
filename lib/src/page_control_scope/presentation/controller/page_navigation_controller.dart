

/// ページ制御クラス
abstract interface class PageNavigationController {

  ///
  void navigateAnywayTo(int targetIndex);

  void navigateWithGuardTo(int targetIndex);
}
