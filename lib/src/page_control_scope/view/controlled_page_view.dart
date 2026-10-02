import 'package:custom_core_types/custom_core_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_model/page_index_view_model.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_state/page_index_state.dart';

abstract class ControlledPage extends ConsumerWidget {
  const ControlledPage({super.key});

  String get title;

  String get shortTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref);
}

/// [ControlledPageView] で表示される [ControlledPage] の固定長リスト
class ControlledPageList extends FixedList<ControlledPage> {
  ControlledPageList(List<ControlledPage> pageList)
    : super.fromIterable(pageList.length, pageList);

  ControlledPageList._copy(super.list) : super.copy();

  @override
  ControlledPageList get deepCopy => ControlledPageList._copy(toEntryList());
}

/// 外部の操作によりページを変更する PageView
///
/// [ControlledPage] を継承したページクラスのリスト（[controlledPageList]）を管理する。
///
/// スクロールによるページの変更を制御したい場合は、[physics] を指定すること。
///
/// ここで管理するページは、ここで指定した [scopeToken] を用いて、外部から以下のように操作
/// できる。
/// ```
/// ref.read(pageNavigationControllerProvider(scopeToken)).navigateAnywayTo(targetIndex);
/// ```
class ControlledPageView extends HookConsumerWidget {

  ControlledPageView({
    super.key,
    required this.controlledPageList,
    this.timeOfNavigation = 300,
    this.physics,
    required this.scopeToken,
  }) : isAlertValid = false,
        onDiscarded = ((_){});

  /// ページを変更する際、何らかの確認（[onWillPop]）を挟むコンストラクタ
  ///
  /// このコンストラクタで指定した対象は、外部から以下のように操作する。
  /// ```
  /// ref.read(pageNavigationControllerProvider(scopeToken)).navigateWithGuardTo(targetIndex);
  /// ```
  const ControlledPageView.withGuard({
    super.key,
    required this.isAlertValid,
    required this.controlledPageList,
    this.timeOfNavigation = 300,
    this.physics,
    required this.scopeToken,
    required this.onDiscarded,
  });

  /// 対象のページのリスト
  ///
  /// 各ページは、[ControlledPage] を継承させること
  final ControlledPageList controlledPageList;

  /// 画面遷移に要する時間（ミリ秒）
  final int timeOfNavigation;

  /// スワイプ時の挙動
  final ScrollPhysics? physics;

  /// 対象スコープで管理する [Token]
  final Token scopeToken;

  /// 確認を有効にするかどうか
  final bool isAlertValid;

  /// 確認ダイアログで、「破棄」を選択した場合に呼ばれるコールバック
  final void Function(int targetIndex) onDiscarded;

  // /// 各ページが遷移しようとしたときに、遷移するかどうかを決める非同期のコールバック
  // final Future<bool> Function(BuildContext) onWillPop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // PageViewを制御するためのPageControllerフック
    final pageController = usePageController(initialPage: 0);

    // VM の状態を監視してページを切り替える
    ref.listen<PageIndexState>(pageIndexViewModelProvider(scopeToken), (
      previous,
      next,
    ) {
      // PageController が未アタッチなら StateError
      if (!pageController.hasClients) {
        throw StateError("対象の ControlledPageView が見つかりませんでした。");
      }

      // pend 中なら早期リターン
      if (next.pendingIndex != null) {
        return;
      }

      final targetPageIndex = next.currentIndex;

      // すでに目的地ページにいる場合は早期リターン
      if (pageController.page?.round() == targetPageIndex) {
        return;
      }

      pageController.animateToPage(
        targetPageIndex,
        duration: Duration(milliseconds: timeOfNavigation),
        curve: Curves.easeInOut,
      );
    });

    return PageView.builder(
      controller: pageController,
      physics: physics,
      itemCount: controlledPageList.length,
      // 各ページのスコープで遷移を制御する
      itemBuilder: (_, targetIndex) => AlertUnsavedScope.extendPopDef(
        // 一度に制御するページは1つなので、Token は呼び出し元で一元管理
        scopeToken: scopeToken,
        isAlertValid: isAlertValid,
        onDiscarded: () => onDiscarded(targetIndex),
        extendedPop: (_) {
          ref.read(pendingNavigationControllerProvider(scopeToken)).approveNavigation();
        },
        child: controlledPageList[targetIndex].value,
      ),
    );
  }
}

// class ControlledPageViewScope extends HookConsumerWidget {
//   const ControlledPageViewScope({
//     super.key,
//     required this.child,
//     required this.scopeToken,
//   });
//
//   final Widget child;
//
//   /// 対象スコープの [Token]
//   final Token scopeToken;
//
//   /// 確認を有効にするかどうか
//   final bool isAlertValid;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//
//     return AlertUnsavedScope.extendPopDef(
//       child: child,
//       scopeToken: scopeToken,
//       isAlertValid: isAlertValid,
//       extendedPop: (_){
//         ref.read(pageNavigationControllerProvider).navigateTo();
//       },
//     );
//   }
// }

// /// ページ変更時に確認を挟む [ControlledPageView]
// class GuardedPageView extends ControlledPageView {
//   const GuardedPageView({
//     super.key,
//     required this.isGuardValid,
//     required super.controlledPageList,
//     required this.onWillNavigate,
//     this.onAnyNavigated,
//     this.onApproved,
//     super.timeOfNavigation,
//     super.physics,
//   });
//
//   /// 遷移時の防御を有効にするかどうか
//   final bool isGuardValid;
//
//   /// [targetIndex] に対応するページに遷移する前に起動するコールバック
//   final Future<bool> Function(int targetIndex) onWillNavigate;
//
//   /// [targetIndex] に対応するページに遷移されたあとに起動するコールバック
//   final Future<void> Function(int targetIndex)? onAnyNavigated;
//
//   /// 防御策が起動した上で、遷移が承認された際に起動するコールバック
//   final Future<void> Function(int targetIndex)? onApproved;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // PageViewを制御するためのPageControllerフック
//     final pageController = usePageController(initialPage: 0);
//
//     // VM の状態を監視してページを切り替える
//     ref.listen<int>(pageIndexViewModelProvider, (previous, next) async {
//       // PageController が未アタッチなら StateError
//       if (!pageController.hasClients) {
//         throw StateError("対象の ControlledPageView が見つかりませんでした。");
//       }
//       // すでに目的地ページにいる場合は早期リターン
//       if (pageController.page?.round() == next) {
//         return;
//       }
//
//       if(isGuardValid){
//         // 引数で指定した遷移防御コールバックで、遷移するかを確認する
//         final bool willNavigate = await onWillNavigate(next);
//         // 遷移が承認された場合
//         if(willNavigate){
//           if(onApproved != null){
//             await onApproved!(next);
//           }
//         }
//         // 遷移しない場合
//         else{
//           // VM の値を元に戻してリターンする
//           // ref.read(pageNavigationControllerProvider).navigateTo(targetIndex);
//           return;
//         }
//       }
//
//       await pageController.animateToPage(
//         next,
//         duration: Duration(milliseconds: timeOfNavigation),
//         curve: Curves.easeInOut,
//       );
//       // 遷移後のコールバックが指定されている場合は起動する
//       if(onAnyNavigated != null) {
//         await onAnyNavigated!(next);
//       }
//     });
//
//     return PageView.builder(
//       controller: pageController,
//       physics: physics,
//       itemCount: controlledPageList.length,
//       itemBuilder: (_, targetIndex) => controlledPageList[targetIndex].value,
//     );
//   }
// }
