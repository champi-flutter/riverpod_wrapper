import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/view_model/edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/view/alert_unsaved_scope_navigation.dart';

/// 編集未保存確認クラス
///
/// 対象の画面 Widget （[child]）に編集を加えた状態で pop する際に、保存されずに戻るのを
/// ダイアログで確認して防ぐ。
class AlertUnsavedScope extends ConsumerWidget {
  const AlertUnsavedScope({super.key, required this.child, this.onDiscarded});

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
        onPopInvokedWithResult: (bool didPop, _) async {
          if (didPop) return;
          // 編集されていた場合は、ダイアログで確認を促す
          await context.alertUnsaved(
            ref,
            isEdited: isEdited,
            onNavigate: () =>
                Navigator.of(context).popWithUnfocus(),
            onDiscarded: onDiscarded,
          );
        },
        // 画面本体
        child: child,
      ),
    );
  }
}
