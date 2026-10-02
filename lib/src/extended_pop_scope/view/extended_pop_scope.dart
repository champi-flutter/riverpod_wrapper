import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/extended_pop_scope_providers/extended_pop_scope_providers.dart';
import 'package:riverpod_wrapper/src/extended_pop_scope/presentation/view_model/scope_focus_view_model.dart';

// todo （2026/10/01）＞＞
class ExtendedPopScope extends ConsumerWidget {
  ExtendedPopScope({
    super.key,
    required this.child,
    required this.willPopWithAny,
    required this.onWillPop,
    this.onPoppedExplicitly,
    required this.pop,
  });

  final Widget child;

  /// 無条件で遷移するかどうか
  final bool willPopWithAny;

  /// この画面が遷移しようとしたときに、遷移するかどうかを決める非同期のコールバック
  final Future<bool> Function(BuildContext) onWillPop;

  /// [onWillPop] で `true` を返されて遷移した時に呼ばれるコールバック
  final void Function()? onPoppedExplicitly;

  /// このスコープの遷移処理
  final void Function(BuildContext) pop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // このスコープのフォーカス状態を監視する
    ref.listen(scopeFocusViewModelProvider, (
      previous,
      next,
    ) async {
      switch (next) {
        case ScopeStatus.focused:
          break;
        case ScopeStatus.popRequested:
          // 引数 willPopWithAny を true で指定した場合、無条件で同期的に遷移する
          if (!willPopWithAny) {
            // 引数で指定した確認処理を実行する
            final bool willPop = await onWillPop(context);
            if (willPop) {
              if(onPoppedExplicitly != null){
                onPoppedExplicitly!();
              }
            }else{
              return;
            }
          }
          // 画面遷移が承認されたことを伝える
          if(context.mounted) {
            ref.read(popScopeFocusControllerProvider).approvePop();
          }
        // VM の状態が popApproved に変わったとき、引数で指定された遷移処理を起動する
        case ScopeStatus.popApproved:
          if(context.mounted) {
            pop(context);
          }
      }
    });

    return PopScope(
      // 引数 willPopWithAny を true で指定した場合でも、コントローラ経由で遷移を行う
      canPop: false,
      onPopInvokedWithResult: (bool didPop, _) async {
        if (didPop) {
          return;
        }
        // 引数 willPopWithAny を true で指定した場合、無条件で同期的に遷移する
        if (!willPopWithAny) {
          // 引数で指定した確認処理を実行する
          final bool willPop = await onWillPop(context);
          if (willPop) {
            if(onPoppedExplicitly != null){
              onPoppedExplicitly!();
            }
          }else{
            return;
          }
        }
        // 画面遷移が承認されたことを伝える
        if(context.mounted) {
          Navigator.of(context).pop();
        }
      },
      child: child,
    );
  }
}
