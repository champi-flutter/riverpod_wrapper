
import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/di/alert_saved_scope_providers/alert_saved_scope_providers.dart';

extension AlertUnsavedScopeNavigation on BuildContext{

  /// ページ切り替え時に未保存の編集がある場合に確認を促す
  ///
  /// [onNavigate] でページ切り替えロジックを設定すること。
  Future<T?> alertUnsaved<T>(
      WidgetRef ref, {
        required bool isEdited,
        required T Function() onNavigate,
        required void Function()? onDiscarded,
      })
  async {
    // 編集されていた場合は、ダイアログで確認を促す
    if (isEdited) {
      // ダイアログで戻ることを確認
      final bool willPop = await confirmToDiscard();
      // 「破棄」を選択した場合
      if (willPop) {
        ref.read(editControllerProvider).notifyDiscarded();
        // 追加の処理があれば実行する
        if (onDiscarded != null) {
          onDiscarded();
        }
        // 画面遷移
        if (mounted) {
          return onNavigate();
        }
      }
      // 「編集を続ける」を選択した場合
      return null;
    }
    // 何も編集しなかった場合は、普通に遷移する
    else {
      return onNavigate();
    }
  }

  /// 編集してが保存せずに戻ろうとしている時の確認メソッド
  ///
  ///  - [barrierDismissible]: `true` なら、枠外タップで 「編集を続ける」に、 `false`
  ///  なら枠外タップを無効にする（デフォルトは `true`）
  Future<bool> confirmToDiscard({
        bool barrierDismissible = true,
      })
// 折りたたみ用
  async {
    return await showDialog<bool>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          content: UtilizedText("現在の編集を破棄しますか？"),
          actions: [
            // 編集を続ける（戻らない）
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(false);
              },
              child: UtilizedText("編集を続ける"),
            ),
            // 破棄（戻る）
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop(true);
              },
              child: UtilizedText("破棄"),
            ),
          ],
        );
      },
    ) ??
        false;
  }
}