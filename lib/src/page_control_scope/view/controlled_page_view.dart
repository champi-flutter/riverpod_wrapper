import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_model/page_index_view_model.dart';

abstract class ControlledPage extends ConsumerWidget{
  const ControlledPage({super.key});

  String get title;

  String get shortTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref);
}

class ControlledPageView extends HookConsumerWidget {
  const ControlledPageView({
    super.key,
    required this.controlledPageList,
    this.timeOfNavigation = 300,
    this.physics,
  });

  /// 対象のページのリスト
  ///
  /// 各ページは、[ControlledPage] を継承させること
  final List<ControlledPage> controlledPageList;

  /// 画面遷移に要する時間（ミリ秒）
  final int timeOfNavigation;

  /// スワイプ時の挙動
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // PageViewを制御するためのPageControllerフック
    final pageController = usePageController(initialPage: 0);

    // VM の状態を監視してページを切り替える
    ref.listen<int>(pageIndexViewModelProvider, (previous, next) {
      if (pageController.hasClients && pageController.page?.round() != next) {
        pageController.animateToPage(
          next,
          duration: Duration(milliseconds: timeOfNavigation),
          curve: Curves.easeInOut,
        );
      }
    });

    return PageView.builder(
      controller: pageController,
      physics: physics,
      itemCount: controlledPageList.length,
      itemBuilder: (_, targetIndex)=>controlledPageList[targetIndex],
    );
  }
}
