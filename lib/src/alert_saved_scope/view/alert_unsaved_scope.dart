import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/hook/use_edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/view_model/edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/view/alert_unsaved_scope_navigation.dart';
import 'package:riverpod_wrapper/src/extended_pop_scope/view/extended_pop_scope.dart';

/// 編集未保存確認クラス
///
/// [scopeToken] に対応する [EditViewModel] の管理するスコープを定義する。
///
/// 対象の画面 Widget （[child]）に編集を加えた状態で pop する際に、保存されずに戻るのを
/// ダイアログで確認して防ぐ。
class AlertUnsavedScope extends ConsumerWidget {
  const AlertUnsavedScope({
    super.key,
    required this.child,
    required this.scopeToken,
    required this.isAlertValid,
    this.onDiscarded,
  }): _extendedPop = null;

  const AlertUnsavedScope.extendPopDef({
    super.key,
    required this.child,
    required this.scopeToken,
    required this.isAlertValid,
    required void Function(BuildContext) extendedPop,
    this.onDiscarded,
  }): _extendedPop = extendedPop;

  /// 確認を有効にするかどうか
  final bool isAlertValid;

  /// 対象スコープの [EditViewModel] の [Token]
  final Token scopeToken;

  final Widget child;

  /// 確認ダイアログで、「破棄」を選択した場合に呼ばれるコールバック
  final VoidCallback? onDiscarded;

  final void Function(BuildContext)? _extendedPop;

  // todo build
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 未保存編集 ViewModel をわたされた Token で監視する（未保存の編集があるかどうか）
    final isEdited = ref.watch(editViewModelProvider(scopeToken));
    // AlertUnsavedScope.extendPopDef で呼び出した場合
    if(_extendedPop != null){
      return ExtendedPopScope(
        child: child,
        willPopWithAny: !isAlertValid,
        onWillPop: (BuildContext context)=>context.confirmToDiscard(),
        onPoppedExplicitly: onDiscarded,
        pop: _extendedPop,
      );
    }
    return PopScope(
      canPop: !isAlertValid,
      onPopInvokedWithResult: (bool didPop, _) async {
        if (didPop) return;
        // 編集されていた場合は、ダイアログで確認を促す
        await context.alertUnsaved(
          ref,
          editState: EditViewModelToken(scopeToken, isEdited),
          onNavigate: () => Navigator.of(context).popWithUnfocus(),
          onDiscarded: onDiscarded,
        );
      },
      // 画面本体
      child: child,
    );
  }
}
