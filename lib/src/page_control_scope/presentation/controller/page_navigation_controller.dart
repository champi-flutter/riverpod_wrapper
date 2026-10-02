

import 'package:riverpod_wrapper/riverpod_wrapper.dart';

/// ページ制御クラス
abstract interface class PageNavigationController {

  /// [ControlledPageView] で管理されているページを変更する
  void navigateAnywayTo(int targetIndex);

  /// [ControlledPageView.withGuard] で管理されているページを変更する
  void navigateWithGuardTo(int targetIndex);
}
