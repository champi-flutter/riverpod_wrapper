
import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

/// 編集未保存確認クラス
///
/// 対象の画面 Widget （[child]）に編集を加えた状態で pop する際に、保存されずに戻るのを
/// ダイアログで確認して防ぐ。
class EditSavedPopScope extends ConsumerWidget {
  const EditSavedPopScope({
    super.key,
    required this.child,
    this.actionOnDiscarded,
  });

  final Widget child;

  /// 確認ダイアログで、「破棄」を選択した場合の、追加の処理
  final VoidCallback? actionOnDiscarded;

  // todo build
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在表示している画面に、未保存の編集があるかどうか
    final isEdited = ref.watch(editSavingControllerProvider);
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, result) async {
          if (didPop) return;
          // 編集されていた場合は、ダイアログで確認を促す
          if (isEdited) {
            // ダイアログで戻ることを確認
            final bool willPop = await _willDefinitelyPop(context);
            // 「破棄」を選択した場合
            if (willPop) {
              ref.read(editSavingControllerProvider.notifier).onDiscarded();
              // 追加の処理があれば
              if(actionOnDiscarded != null) {
                actionOnDiscarded!();
              }
              if(context.mounted) {
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

  /// 編集してが保存せずに戻ろうとしている時の確認メソッド
  Future<bool> _willDefinitelyPop(BuildContext context) async {
    bool _willPop = false;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text("現在の編集を破棄しますか？"),
          actions: [
            // 編集を続ける（戻らない）
            TextButton(
              onPressed: () {
                _willPop = false;
                Navigator.of(context).pop();
              },
              child: Text("編集を続ける"),
            ),
            // 破棄（戻る）
            TextButton(
              onPressed: () {
                _willPop = true;
                Navigator.of(context).pop();
              },
              child: Text("破棄"),
            ),
          ],
        );
      },
    );
    return _willPop;
  }
}
