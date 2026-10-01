import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/view_model/edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/view/alert_unsaved_scope.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/view/alert_unsaved_scope_navigation.dart';
import 'package:riverpod_wrapper/src/di/page_control_scope/page_control_scope_providers.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_model/page_index_view_model.dart';
import 'package:riverpod_wrapper/src/page_control_scope/view/controlled_page_view.dart';

class AlertUnsavedScopedPageView extends HookConsumerWidget {
  const AlertUnsavedScopedPageView({
    super.key,
    // required this.controlledPageList,
    // required this.topNavigationBuilder,
    // required this.bottomNavigationBuilder,
    // this.timeOfNavigation = 300,
    this.onDiscarded,
  });

  const AlertUnsavedScopedPageView.withChips({
    super.key,
    // required this.controlledPageList,
    // this.timeOfNavigation = 300,
    this.onDiscarded,
    // required this.bottomNavigationBuilder,
  }) : assert(
  controlledPageList.length > 0,
         "[AlertUnsavedScopedPageView] 無効な値です（controlledPageList.length = $controlledPageList.length）",
       );
       // topNavigationBuilder = _NavigationChips.builder;

  // /// PageView の index に対応する画面を返す関数
  // final Widget Function(BuildContext context, int index) pageBuilder;

  // /// ページの数
  // final int numberOfPage;

  /// 対象 [index] のページの変更が保存されずに破棄された時のコールバック
  final void Function(int index)? onDiscarded;

  // /// 画面クラスの名前のリスト
  // final List<String> pageNameList;

  // final int timeOfNavigation;

  // /// 対象のページのリスト
  // ///
  // /// 各ページは、[ControlledPage] を継承させること
  // final List<ControlledPage> controlledPageList;

  // ///　このクラス内の画面を操作するナビゲータのうちの上側のナビゲータ
  // final AlertUnsavedScopedPagesTopNavigationWidget Function({
  //   required int selectedIndex,
  //   required List<ControlledPage> controlledPageList,
  //   required void Function(int) onNavigate,
  // })?
  // topNavigationBuilder;
  //
  // ///　このクラス内の画面を操作するナビゲータのうちの上側のナビゲータ
  // final AlertUnsavedScopedPagesBottomNavigationWidget Function({
  // required int selectedIndex,
  // required List<ControlledPage> controlledPageList,
  // required void Function(int) onNavigate,
  // })?
  // bottomNavigationBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // ControlledPageView で選択せれているページのインデックス
    final int currentPageIndex = ref.watch(pageIndexViewModelProvider);

    // 未保存の編集を破棄する際に呼ばれるコールバック
    final onCurrentPageDiscarded = onDiscarded == null
        ? null
        : () => onDiscarded!(currentPageIndex);

    // // ページ切り替えを安全に行う関数
    // Future<void> onControlPage(int targetIndex) async {
    //   // 現在のページと同じ場合は何もしない
    //   if (currentPageIndex == targetIndex) return;
    //   await context.alertUnsaved(
    //     ref,
    //     isEdited: isEdited,
    //     onNavigate: () {
    //       ref.read(pageNavigationControllerProvider).navigateTo(targetIndex);
    //     },
    //     onDiscarded: onCurrentPageDiscarded,
    //   );
    // }

    // //　上側のナビゲータ
    // final topNavigation = topNavigationBuilder == null? null : topNavigationBuilder!(
    //   selectedIndex: currentPageIndex,
    //   controlledPageList: controlledPageList,
    //   onNavigate: onControlPage,
    // );
    //
    // //　下側のナビゲータ
    // final bottomNavigation = bottomNavigationBuilder == null? null : bottomNavigationBuilder!(
    //   selectedIndex: currentPageIndex,
    //   controlledPageList: controlledPageList,
    //   onNavigate: onControlPage,
    // );

    // このラッパのスコープ自体が破棄されそうになった場合もブロックする
    return AlertUnsavedScope(
      onDiscarded: onCurrentPageDiscarded,
      child: ,
    );
  }
}

///　[AlertUnsavedScopedPageView] 内の画面を操作するナビゲータのうちの上側のナビゲータ
abstract class AlertUnsavedScopedPagesTopNavigationWidget
    extends StatelessWidget {
  const AlertUnsavedScopedPagesTopNavigationWidget({
    super.key,
    required this.selectedIndex,
    required this.controlledPageList,
    required this.onNavigate,
  });

  /// 現在の画面のインデックス
  final int selectedIndex;

  /// 対象のページのリスト
  ///
  /// 各ページは、[ControlledPage] を継承させること
  final List<ControlledPage> controlledPageList;

  /// 画面遷移処理
  ///
  /// 引数は、遷移先の画面のインデックス
  final void Function(int) onNavigate;
}

///　[AlertUnsavedScopedPageView] 内の画面を操作するナビゲータのうちの上側のナビゲータ
///
/// todo このクラスの継承例（2026/09/30）＞＞
abstract class AlertUnsavedScopedPagesBottomNavigationWidget
    extends StatelessWidget {
  const AlertUnsavedScopedPagesBottomNavigationWidget({
    super.key,
    required this.selectedIndex,
    required this.controlledPageList,
    required this.onNavigate,
  });

  /// 現在の画面のインデックス
  final int selectedIndex;

  /// 対象のページのリスト
  ///
  /// 各ページは、[ControlledPage] を継承させること
  final List<ControlledPage> controlledPageList;

  /// 画面遷移処理
  ///
  /// 引数は、遷移先の画面のインデックス
  final void Function(int) onNavigate;
}

class _NavigationChips extends AlertUnsavedScopedPagesTopNavigationWidget {
  const _NavigationChips.builder({
    super.key,
    required super.selectedIndex,
    required super.controlledPageList,
    required super.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      alignment: Alignment.center,
      // AppBarとは別で、独自の背景色や下部ボーダー（境界線）を設定可能
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor, // ボディと同じ背景色
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200, // 境界線を入れてすっきり見せる
            width: 1.0,
          ),
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: controlledPageList.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8.0),
        // Chip 1つずつの設定
        itemBuilder: (context, destinationPageIndex) {
          final isSelected = selectedIndex == destinationPageIndex;
          return ChoiceChip(
            // todo サイズ確認（2026/06/10）＞＞
            label: UtilizedText(
              controlledPageList[destinationPageIndex].shortTitle,
              // 完全に中心を指定
              alignment: AlignmentGeometry.center,
            ),
            // 選択されているかどうか
            // （背景色や文字色が選択時のものへとアニメーションを伴って変化する）
            selected: isSelected,
            selectedColor: Theme.of(context).colorScheme.primary,
            labelStyle: TextStyle(
              color: isSelected ? Colors.white : Colors.black87,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
            // タップ時の処理（引数はタップ後の selected の値）
            onSelected: (bool selected) {
              if (selected) {
                onNavigate(destinationPageIndex);
              }
            },
          );
        },
      ),
    );
  }
}
