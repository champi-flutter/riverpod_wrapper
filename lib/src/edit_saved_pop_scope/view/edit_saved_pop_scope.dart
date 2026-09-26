import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/di/edit_saved_pop_scope_providers/edit_saved_pop_scope_providers.dart';
import 'package:riverpod_wrapper/src/edit_saved_pop_scope/presentation/view_model/edit_view_model.dart';

/// 編集未保存確認クラス
///
/// 対象の画面 Widget （[child]）に編集を加えた状態で pop する際に、保存されずに戻るのを
/// ダイアログで確認して防ぐ。
class EditSavedPopScope extends ConsumerWidget {
  const EditSavedPopScope({super.key, required this.child, this.onDiscarded});

  final Widget child;

  /// 確認ダイアログで、「破棄」を選択した場合に呼ばれるコールバック
  final VoidCallback? onDiscarded;

  // todo build
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在表示している画面に、未保存の編集があるかどうか
    final isEdited = ref.watch(editViewModelProvider);
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, result) async {
          if (didPop) return;
          // 編集されていた場合は、ダイアログで確認を促す
          if (isEdited) {
            // ダイアログで戻ることを確認
            final bool willPop = await confirmToDiscard(context);
            // 「破棄」を選択した場合
            if (willPop) {
              ref.read(editControllerProvider).notifyDiscarded();
              // 追加の処理があれば
              if (onDiscarded != null) {
                onDiscarded!();
              }
              if (context.mounted) {
                // TextField 等にフォーカスを残さない
                Navigator.of(context).popWithUnfocus();
              }
            }
          }
          // 何も編集しなかった場合は、普通に戻る
          else {
            // TextField 等にフォーカスを残さない
            Navigator.of(context).popWithUnfocus();
          }
        },
        // 画面本体
        child: child,
      ),
    );
  }
}

/// 編集してが保存せずに戻ろうとしている時の確認メソッド
///
///  - [barrierDismissible]: `true` なら、枠外タップで 「編集を続ける」に、 `false`
///  なら枠外タップを無効にする（デフォルトは `true`）
Future<bool> confirmToDiscard(
  BuildContext context, {
  bool barrierDismissible = true,
})
// 折りたたみ用
async {
  return await showDialog<bool>(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (BuildContext context) {
          return AlertDialog(
            content: UtilizedText("現在の編集を破棄しますか？"),
            actions: [
              // 編集を続ける（戻らない）
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: UtilizedText("編集を続ける"),
              ),
              // 破棄（戻る）
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text("破棄"),
              ),
            ],
          );
        },
      ) ??
      false;
}
