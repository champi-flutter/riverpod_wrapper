import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetView extends StatelessWidget {
  const ResetView({super.key,
  double? darkness,
  }) : _darkness = darkness ?? 0.5;

  /// ローディング時の背景の暗さ（`0.0` ~ `1.0`）。　デフォルトでは `0.5` 。
  final double _darkness;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withValues(alpha: _darkness),
      child: Center(
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            "リスタートしてください",
            style: TextStyle(fontSize: 50.r, color: Colors.white),
          ),
        ),
      ),
    );
  }
}