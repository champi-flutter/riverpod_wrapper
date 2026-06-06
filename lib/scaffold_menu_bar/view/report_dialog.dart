import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/di/providers.dart';

class ReportDialog extends HookConsumerWidget {
  final String? initialSubject;
  final String? initialBody;

  const ReportDialog({super.key, this.initialSubject, this.initialBody});

  // todo build
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 「件名」の入力値
    // todo  useTextEditingController のままでいいか？（2026/06/06）＞＞
    final TextEditingController subjectController = useTextEditingController(
      text: initialSubject ?? "",
    );

    // 「本文」の入力値
    final TextEditingController bodyController = useTextEditingController(
      text: initialBody ?? "",
    );
    return SimpleDialog(
      children: [
        SizedBox(
          width: 400.w,
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  maxLines: null,
                  controller: subjectController,
                  decoration: InputDecoration(
                    labelText: "件名",
                    enabledBorder: UnderlineInputBorder(),
                    // 入力欄右端のアイコンボタン（suffix: 接尾辞）
                    suffixIcon: IconButton(
                      onPressed: () => subjectController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                  ),
                  // エンターキーで次の入力欄に進む
                  textInputAction: TextInputAction.next,
                ),
                TextFormField(
                  maxLines: null,
                  controller: bodyController,
                  decoration: InputDecoration(
                    labelText: "本文",
                    enabledBorder: UnderlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => bodyController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                  ),
                  // エンターキーで改行
                  textInputAction: TextInputAction.newline,
                ),
              ],
            ),
          ),
        ),
        // const SizedBox(
        //   height: 20.0,
        // ),
        // 「送信」ボタン
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TemplateDialogActions(
              textOfDecision: "送信",
              // 本文入力状態でのみ送信可能
              canDecide: bodyController.text != "",
              onDecided: () async {
                final readMenuBarVM = ref.read(menuBarViewModelProvider);
                final String subject = subjectController.text;
                final String body = bodyController.text;
                // 入力漏れがないか確認したら、ダイアログを閉じてから処理を呼び出す
                // （二重タップの防止）
                Navigator.of(context).popWithUnfocus();

                // サイドメニューVMでEmail送信メソッドを呼び出す
                await readMenuBarVM.reportIssues(subject: subject, body: body);
              },
            ),
          ],
        ),
      ],
    );
  }
}