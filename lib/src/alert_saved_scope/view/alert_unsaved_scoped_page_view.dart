import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/hook/use_edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/presentation/view_model/edit_view_model.dart';
import 'package:riverpod_wrapper/src/alert_saved_scope/view/alert_unsaved_scope_navigation.dart';
import 'package:riverpod_wrapper/src/page_control_scope/view/controlled_page_view.dart';

class AlertUnsavedScopedPageView extends HookConsumerWidget {
  const AlertUnsavedScopedPageView({
    super.key,
    required this.scopeToken,
    required this.controlledPageList,
    required this.onDiscarded,
    this.timeOfNavigation = 300,
    this.physics,
    this.isInvalidByOther = false,
  });

  /// 対象スコープの [EditViewModel] の [Token]
  final Token scopeToken;

  /// 対象のページのリスト
  ///
  /// 各ページは、[ControlledPage] を継承させること
  final ControlledPageList controlledPageList;

  /// 画面遷移に要する時間（ミリ秒）
  final int timeOfNavigation;

  /// スワイプ時の挙動
  final ScrollPhysics? physics;

  /// 対象 [index] のページの変更が保存されずに破棄された時のコールバック
  final Future<void> Function(int index) onDiscarded;

  final bool isInvalidByOther;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 未保存編集 ViewModel をわたされた Token で監視する（未保存の編集があるかどうか）
    final isEdited = ref.watch(editViewModelProvider(scopeToken));

    // 遷移時の防御を有効にするかどうか（isEdited と 引数で指定する他の条件）
    final bool isGuardValid = isEdited && !isInvalidByOther;

    return GuardedPageView(
      isGuardValid: isGuardValid,
      controlledPageList: controlledPageList,
      timeOfNavigation: timeOfNavigation,
      physics: physics,
      onWillNavigate: (int targetIndex) async {
        // 編集されていた場合は、ダイアログで確認を促す
        return await context.confirmToDiscard();
      },
      onApproved: onDiscarded,
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
