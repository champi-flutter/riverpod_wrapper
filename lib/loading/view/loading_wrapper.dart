import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/loading/view/loading_view.dart';
import 'package:riverpod_wrapper/loading/view/reset_view.dart';
import 'package:riverpod_wrapper/loading/view_model/loading_view_model.dart';

class LoadingWrapper extends HookConsumerWidget {
  const LoadingWrapper({
    super.key,
    required this.child,
    this.circleDiameter,
    this.thickness,
    this.circleColor,
    this.darkness,
  });

  final Widget child;

  /// ぐるぐるの直径。　デフォルトでは `60.r` 。
  final double? circleDiameter;

  /// ぐるぐるの太さ。　デフォルトでは `8.r` 。
  final double? thickness;

  /// ぐるぐるの色。　デフォルトでは `Colors.white54` 。
  final Color? circleColor;

  /// ローディング時の背景の暗さ（`0.0` ~ `1.0`）。　デフォルトでは `0.5` 。
  final double? darkness;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ローディング
    final bool isLoading = ref.watch(
      loadingViewModelProvider.select((state) => state.isLoading),
    );
    // データリセット時（デバッグ用）
    final bool shouldReset = ref.watch(
      loadingViewModelProvider.select((state) => state.shouldReset),
    );
    return Stack(
      children: [
        // 画面本体
        child,
        // ローディング画面
        if (isLoading)
          LoadingView(
            circleDiameter: circleDiameter,
            thickness: thickness,
            circleColor: circleColor,
            darkness: darkness,
          ),
        // 「リスタートしてください」（デバッグ用）
        if (kDebugMode && shouldReset) ResetView(darkness: darkness),
      ],
    );
  }
}
