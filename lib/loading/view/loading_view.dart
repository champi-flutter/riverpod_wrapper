import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 2026/05/12 追加: ローディング画面クラス
class LoadingView extends StatelessWidget {
  LoadingView({
    super.key,
    double? circleDiameter,
    double? thickness,
    Color? circleColor,
    double? darkness,
  }) : _circleDiameter = circleDiameter ?? 60.r,
       _thickness = thickness ?? 8.r,
       _circleColor = circleColor ?? Colors.white54,
       _darkness = darkness ?? 0.5;

  /// ぐるぐるの直径。　デフォルトでは `60.r` 。
  final double _circleDiameter;

  /// ぐるぐるの太さ。　デフォルトでは `8.r` 。
  final double _thickness;

  /// ぐるぐるの色。　デフォルトでは `Colors.white54` 。
  final Color _circleColor;

  /// ローディング時の背景の暗さ（`0.0` ~ `1.0`）。　デフォルトでは `0.5` 。
  final double _darkness;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withValues(alpha: _darkness),
      child: Center(
        child: SizedBox(
          width: _circleDiameter,
          height: _circleDiameter,
          child: CircularProgressIndicator(
            // ぐるぐるの太さ
            strokeWidth: _thickness,
            // ぐるぐるの色は、`Animation<Color>` で指定
            valueColor: AlwaysStoppedAnimation<Color>(_circleColor),
          ),
        ),
      ),
    );
  }
}
