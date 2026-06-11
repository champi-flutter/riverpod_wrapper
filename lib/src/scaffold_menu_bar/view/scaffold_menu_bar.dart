import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/providers.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/view/report_dialog.dart';

class ScaffoldMenuBar extends ConsumerWidget {
  const ScaffoldMenuBar({
    super.key,
    this.headerHeight,
    this.textColor,
    this.storeUrl,
    required this.termsUrl,
    required this.privacyPolicyUrl,
  }) : _isFeedbackValid = storeUrl != null;

  /// ヘッダーの縦の長さ。
  final double? headerHeight;

  final bool _isFeedbackValid;

  /// ストアの URL （nullable）。
  ///
  /// `null` の場合、「ご意見・ご感想」ボタンがグレーアウトされる。
  final String? storeUrl;

  /// 各 [TextButton] の文字の色。デフォルトでは、
  /// `Theme.of(context).colorScheme.onPrimary` 。
  final Color? textColor;

  /// 利用規約の URL 。
  final String termsUrl;

  /// プライバシーポリシーの URL 。
  final String privacyPolicyUrl;

  // todo build
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color _textColor =
        textColor ?? Theme.of(context).colorScheme.onPrimary;
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: headerHeight ?? 90.h,
            child: GestureDetector(
              child: DrawerHeader(
                // デフォルトはLTRB(16, 16, 16, 8)
                // ↑ margin と合わせた枠の中心に child を置こうとする
                // ↓ margin を省いた枠（色のついた枠）の中心に child を置く
                padding: EdgeInsets.all(12.r),
                margin: EdgeInsets.only(bottom: 8.r),
                decoration: BoxDecoration(color: Colors.indigo),
                child: Center(
                  // 2026/02/21 変更: 枠のタップ領域を TextButton から
                  // 　　　　　　　　　　GestureDetector に変更
                  child: Text(
                    "メニュー",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () => Navigator.of(context).popWithUnfocus(),
            ),
          ),
          // お問い合わせ
          Padding(
            padding: EdgeInsets.only(bottom: 4.0.h),
            child: ExpansionTile(
              textColor: Colors.black,
              collapsedBackgroundColor: Colors.white,
              backgroundColor: Colors.white,
              title: Text(" お問い合わせ", style: TextStyle(fontSize: 18.sp)),
              children: [
                // ストアで評価
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ご意見・ご感想",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: _isFeedbackValid ? _textColor : Colors.black45,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      if (_isFeedbackValid)
                        Icon(
                          Icons.open_in_new,
                          size: 30.r,
                          color: Colors.black54,
                        ),
                    ],
                  ),
                  onPressed: _isFeedbackValid
                      ? () {
                          final readMenuBarVM = ref.read(
                            menuBarViewModelProvider,
                          );
                          readMenuBarVM.onFeedback(storeUrl: storeUrl!);
                        }
                      : null,
                ),
                // 不具合を報告
                TextButton(
                  child: Text("不具合を報告", style: TextStyle(fontSize: 18.sp)),
                  onPressed: () {
                    // 不具合報告ダイアログを表示
                    showDialog(
                      context: context,
                      // ダイアログ外のタップを無効化
                      barrierDismissible: false,
                      builder: (context) => ReportDialog(),
                    );
                  },
                ),
              ],
            ),
          ),
          // 利用規約
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h),
            child: ListTile(
              tileColor: Colors.white,
              title: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  foregroundColor: Colors.black,
                ),
                onPressed: () async {
                  final readMenuBarVM = ref.read(menuBarViewModelProvider);
                  // サイドメニューVMでURL展開メソッドを呼び出す
                  await readMenuBarVM.onTermsTapped(termsUrl: termsUrl);
                },
                child: Row(
                  children: [
                    Text("利用規約", style: TextStyle(fontSize: 18.sp)),
                    SizedBox(width: 16.w),
                    Icon(Icons.open_in_new, size: 30.r, color: Colors.black54),
                  ],
                ),
              ),
            ),
          ),
          // プライバシーポリシー
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h),
            child: ListTile(
              tileColor: Colors.white,
              title: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  foregroundColor: Colors.black,
                ),
                onPressed: () async {
                  final readMenuBarVM = ref.read(menuBarViewModelProvider);
                  // サイドメニューVMでURL展開メソッドを呼び出す
                  await readMenuBarVM.onPrivacyPolicyTapped(
                    privacyPolicyUrl: privacyPolicyUrl,
                  );
                },
                child: Row(
                  children: [
                    Text("プライバシーポリシー", style: TextStyle(fontSize: 18.sp)),
                    SizedBox(width: 16.w),
                    Icon(Icons.open_in_new, size: 30.r, color: Colors.black54),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
