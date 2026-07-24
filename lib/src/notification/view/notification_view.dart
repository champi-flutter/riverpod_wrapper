import 'dart:async';
import 'dart:math';

import 'package:custom_core_types/custom_core_types.dart';
import 'package:custom_widgets/custom_widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/providers.dart';
import 'package:riverpod_wrapper/src/notification/type_definition/notification_typedef.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/view/report_dialog.dart';

/// 2026/04/01 追加: Stateクラスから送られてきた何らかの通知を画面で表示するラッパークラス。
class NotificationView extends HookConsumerWidget {
  final Widget child;

  const NotificationView({super.key, required this.child});

  static const int _testDuration = 3;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 最初の画面描画後に購読
    useEffect(() {
      final usedContext = useContext();
      final readNotificationPresenter = ref.read(notificationPresenterProvider);
      // 購読を開始
      final subscription = readNotificationPresenter.notificationStream.listen((
        Notified notifiedInfo,
      ) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (usedContext.mounted) {
            final String? layer;
            switch (notifiedInfo.type) {
              case NotificationType.confirm:
                layer = switch (notifiedInfo.layer) {
                  NotificationFrom.viewModel => "ViewModelConfirmation\n",
                  NotificationFrom.useCase => "UseCaseConfirmation\n",
                  NotificationFrom.gateway => "GatewayConfirmation\n",
                  NotificationFrom.native => "NativeConfirmation\n",
                  null => null,
                };
                // 通知を表示
                usedContext.showNotification(
                  title: "確認",
                  titleColor: Colors.white,
                  notifiedInfo: notifiedInfo,
                  duration: const Duration(minutes: 30),
                  layer: layer,
                  isError: false,
                  toastType: ToastType.bottom,
                );

              case NotificationType.test:
                layer = switch (notifiedInfo.layer) {
                  NotificationFrom.viewModel => "ViewModelResult\n",
                  NotificationFrom.useCase => "UseCaseResult\n",
                  NotificationFrom.gateway => "GatewayResult\n",
                  NotificationFrom.native => "NativeResult\n",
                  null => null,
                };
                // 通知を表示
                usedContext.showNotification(
                  title: "テスト",
                  titleColor: Colors.blueAccent.shade100,
                  notifiedInfo: notifiedInfo,
                  duration: const Duration(minutes: _testDuration),
                  layer: layer,
                  isError: false,
                  toastType: ToastType.bottom,
                );

              case NotificationType.error:
                layer = switch (notifiedInfo.layer) {
                  NotificationFrom.viewModel => "ViewModelException\n",
                  NotificationFrom.useCase => "UseCaseException\n",
                  NotificationFrom.gateway => "GatewayException\n",
                  NotificationFrom.native => "NativeException\n",
                  null => null,
                };
                // 通知バーを下から表示
                usedContext.showNotification(
                  title: "エラー",
                  titleColor: Colors.redAccent,
                  notifiedInfo: notifiedInfo,
                  duration: const Duration(minutes: 60),
                  layer: layer,
                  isError: true,
                  toastType: ToastType.bottom,
                );

              case NotificationType.success:
                // 通知バーを下から表示
                usedContext.showNotification(
                  notifiedInfo: notifiedInfo,
                  duration: const Duration(seconds: 3),
                  isError: false,
                  toastType: ToastType.top,
                );
            }
          }
        });
      });

      // クリーンアップ関数で購読を解除
      return () => subscription.cancel();
    }, []);

    return child;
  }
}

enum ToastType { top, bottom }

extension NotificationExtensions on BuildContext {
  /// 通知を表示するメソッド
  Future<void> showNotification({
    String? title,
    Color? titleColor,
    required Notified notifiedInfo,
    required Duration duration,
    // 2026/04/24 追加:
    String? layer,
    // 2026/05/19 追加:
    required bool isError,
    required ToastType toastType,
  })
  // 折りたたみ用
  async {
    // トーストが最終的に表示される位置に対する相対的なスタート位置（y座標）
    final double initialY = switch (toastType) {
      ToastType.top => -1,
      ToastType.bottom => 1,
    };
    await showGeneralDialog(
      context: this,
      // 背景（バリア）部分をタップした時に、ダイアログを閉じる
      barrierDismissible: true,
      barrierLabel: "Dismiss Notification",
      // 背景色
      barrierColor: Colors.black45,
      // 表示/非表示アニメーションの時間
      transitionDuration: const Duration(milliseconds: 300),

      // 表示・非表示時の、システム主導のアニメーション
      transitionBuilder: (context, animation, _, child) {
        // SlideTransition を用いて、ウィジェットを下から上にスライドさせながら出現させる
        return SlideTransition(
          position:
              Tween<Offset>(
                // スタート位置
                begin: Offset(0, initialY),
                // 終了位置：本来配置される位置（y座標が 0）
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation, // アニメーションのコントローラー
                  curve: Curves.easeOutQuad, // スムーズな減速（滑らかに止まる）アニメーションカーブを適用
                ),
              ),
          child: child, // pageBuilder で構築された中身（ダイアログウィジェット）
        );
      },

      // 本体を構築
      pageBuilder: (context, animation, _) {
        switch (toastType) {
          case ToastType.top:
            return _TopToastBody(
              notifiedInfo: notifiedInfo,
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              duration: duration,
            );
          case ToastType.bottom:
            assert(
              title != null && titleColor != null,
              "ボトムトーストでタイトルが指定されていません。",
            );
            // ユーザ主導のアニメーション機能を含むダイアログ
            return _BottomToastBody(
              title: title!,
              titleColor: titleColor!,
              notifiedInfo: notifiedInfo,
              layer: layer,
              isError: isError,
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            );
        }
      },
    );
  }
}

/// 画面下部から表示されるトーストメッセージ
///
/// ユーザ主導のアニメーション機能を含むダイアログクラス
class _BottomToastBody extends HookWidget {
  final String title;
  final Color titleColor;
  final bool isError;
  final double screenWidth;
  final double screenHeight;

  _BottomToastBody({
    super.key,
    required this.title,
    required this.titleColor,
    required Notified notifiedInfo,
    required String? layer,
    required this.isError,
    required this.screenWidth,
    required this.screenHeight,
  }) : content = "$layer${notifiedInfo.notification}\n$nowWithTime",
       lines = layer == null ? 2 : 3;

  final String content;
  final int lines;

  /// 行数と表示形式に応じた、推定高さを取得
  double getEstimatedHeight({required int lines, required bool isError})
  // 折りたたみ用
  {
    // 1行あたりの基本の高さ（フォントサイズに Flutter の標準的な行高倍率 約1.3 を掛けたもの）
    final double titleHeight = 24.sp * 1.3;

    // 本文の高さ
    final double baseContentLineHeight = 18.sp * 1.3;

    // isError: false の場合の行数ごとの高さ
    final double estimatedHeightsWithoutReport =
        titleHeight + 16.h + (baseContentLineHeight * lines);

    // isError: true の場合の行数ごとの高さ
    // エラー要素の内訳: SizedBox(16.h) + Padding(16.h) + FormalButton(32.h) = 64.h
    final double reportButtonHeight = 16.h + 16.h + 32.h;

    final double estimatedHeightsWithReport =
        estimatedHeightsWithoutReport + reportButtonHeight;

    return isError ? estimatedHeightsWithReport : estimatedHeightsWithoutReport;
  }

  @override
  Widget build(BuildContext context) {
    // ドラッグによる移動量を管理
    final dragOffset = useState<double>(0.0);

    // ユーザーがドラッグ（タッチ操作）中かどうかのフラグ
    final isDragging = useState<bool>(false);

    // 推定の高さ（計算がやや複雑なので、一応遅延初期化）
    final bodyHeight = useState<double>(100.h);
    useEffect(() {
      bodyHeight.value = getEstimatedHeight(lines: lines, isError: isError);
      return null;
    }, []);

    return GestureDetector(
      // ドラッグ開始時に即座に追従モードへ切り替える
      onVerticalDragStart: (_) {
        isDragging.value = true;
      },
      // 縦方向のドラッグを検知してスライドダウンで閉じられるようにする
      onVerticalDragUpdate: (details) {
        // max(0.0, ...) で上方向（マイナス）への突き抜けを防ぎつつ、ドラッグ移動量を加算
        dragOffset.value = max(0.0, dragOffset.value + details.primaryDelta!);
      },
      onVerticalDragEnd: (details) {
        isDragging.value = false;

        // 閉じるかどうかの判定（コンテンツの高さの1/3以上引き下げられたか、または
        // 下スワイプ速度が速い場合）
        final bool shouldDismiss =
            dragOffset.value > (bodyHeight.value / 3) ||
            details.primaryVelocity! > 500;
        // 一定以上スライドされたか、ドラッグの速度が一定以上の場合は閉じる
        if (shouldDismiss) {
          Navigator.of(context).pop();
        } else {
          // 閾値未満の場合は元の位置に戻す
          dragOffset.value = 0.0;
        }
      },
      child: AnimatedContainer(
        // ドラッグ中（isDragging=true）は指に吸い付くように即時更新（Duration.zero）。
        // 指を離したとき（isDragging=false）は、250 msかけて元の位置に
        // スルスル戻すアニメーションを適用。
        duration: isDragging.value
            ? Duration.zero
            : const Duration(milliseconds: 250),
        // ドラッグの移動に合わせてウィジェットをY座標が移動
        transform: Matrix4.translationValues(0, dragOffset.value, 0),
        // イージング
        curve: Curves.easeOutCubic,
        child: Material(
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              // 画面のほとんどをスライド可能領域にする
              width: screenWidth,
              height: screenHeight * 0.9,
              child: Column(
                children: [
                  // 1. スライド可能かつタップで閉じられる透明な領域 (およそ半分)
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(color: Colors.transparent),
                    ),
                  ),
                  // 2. 実際の表示領域 (通知コンテンツ)
                  Container(
                    // 高さは、子Widget の高さの合計（↓ Column.mainAxisSize で設定）
                    width: screenWidth * 0.9,
                    // この Container の下側
                    margin: EdgeInsets.only(
                      bottom: context.obscuredArea.bottom + 16.h,
                    ),
                    // この Container の内側と、子Widget との間隔
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5.h),
                        ),
                      ],
                    ),
                    child: Column(
                      // Column の高さを、children の高さの合計に制限
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // タイトル
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.sp,
                            color: titleColor,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // 通知内容
                        Center(
                          child: UtilizedText(
                            content,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        // 「報告する」ボタン
                        if (isError) ...[
                          SizedBox(height: 16.h),
                          Align(
                            alignment: AlignmentGeometry.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: 16.h,
                                right: 8.w,
                              ),
                              child: FormalButton(
                                text: "報告する",
                                onPressed: () async {
                                  // 不具合報告ダイアログ表示メソッドを起動し、そのプロセスが完了
                                  // した後に、スナックバーを閉じる
                                  await _showReportDialog(
                                    context,
                                    // 送信内容
                                    body: content,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// 不具合報告ダイアログ表示メソッド
  ///
  /// 確認ダイアログと不具合報告ダイアログの両方を同じ非同期プロセスに組み込む
  Future<void> _showReportDialog(BuildContext context, {required String? body})
  // 折りたたみ用
  async {
    // 確認ダイアログを表示
    // この変数に入れる値は、`Navigator.of(context).pop(<ここ>)` に当てはめられる
    final bool isConfirmed = await showDialog(
      context: context,
      // ダイアログ枠外タップを無効化
      barrierDismissible: false,
      builder: (dialogContext1) {
        return AlertDialogTemplate(
          title: "確認",
          content: "開発者にレポートを送信しますか？",
          actionStyle: ActionStyle.yesNo,
          yesAction: () {
            // 次のダイアログの表示を許可する
            Navigator.of(context).pop(true);
          },
          noAction: () {
            // 次のダイアログの表示を拒否し、早期リターン
            Navigator.of(context).pop(false);
          },
        );
      },
    );
    // 「はい」の場合のみ不具合報告ダイアログを表示
    if (isConfirmed && context.mounted) {
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext1) {
          return ReportDialog(
            initialSubject: "習慣トラッカーカードアプリの不具合の報告",
            initialBody: body,
          );
        },
      );
    }
  }
}

/// 画面上部から表示されるトーストメッセージ
///
/// 指定時間（[duration]）が経過すると自動で閉じる。
class _TopToastBody extends HookWidget {
  const _TopToastBody({
    super.key,
    required this.notifiedInfo,
    required this.screenWidth,
    required this.screenHeight,
    required this.duration,
    this.textColor,
    this.backgroundColor,
  });

  final Notified notifiedInfo;
  final double screenWidth;
  final double screenHeight;

  /// トーストを閉じるタイマー。
  final Duration duration;

  /// 文字の色。　デフォルトでは、
  /// `Theme.of(context).colorScheme.secondary` 。
  final Color? textColor;

  /// トーストの色　デフォルトでは、
    /// `Theme.of(context).colorScheme.onSecondary` 。
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    // 上方向へのドラッグ移動量（y座標の減少を追うため、マイナスの数値で管理）
    final dragOffset = useState<double>(0.0);
    // ドラッグ中かどうかのフラグ
    final isDragging = useState<bool>(false);

    // 一定時間経過後に自動的にトーストを閉じるタイマー処理
    useEffect(() {
      final timer = Future.delayed(duration, () {
        // ユーザーがドラッグ操作中でない、かつ、まだダイアログが開いている場合のみ自動終了
        if (context.mounted && !isDragging.value && dragOffset.value == 0.0) {
          Navigator.of(context).pop();
        }
      });
      return () => timer.ignore(); // ウィジェット破棄時にタイマーのリソースを安全に無視/破棄する
    }, [duration]);

    return GestureDetector(
      // ドラッグ開始 + 即時追従
      onVerticalDragStart: (_) {
        isDragging.value = true;
      },
      onVerticalDragUpdate: (details) {
        // 上スワイプを追うため、マイナスの数値を代入。
        // min(0.0) を用いることで、指をどれだけ下に引っ張っても初期位置（0.0）より下には
        // 伸びないようストッパーをかける。
        dragOffset.value = min(0.0, dragOffset.value + details.primaryDelta!);
      },
      // ドラッグ終了：滑らかなアニメーション復元を有効化
      onVerticalDragEnd: (details) {
        isDragging.value = false;

        // 閉じる判定の閾値。
        // トーストが可変高のため、おおよその最小ハイト80の半分である -40 以下まで引き上げら
        // れたか、もしくは上方向へのフリックスピードが指定値を超えて速い場合に閉じる。
        final bool shouldDismiss =
            dragOffset.value < -40.0 || details.primaryVelocity! < -500;

        if (shouldDismiss) {
          Navigator.of(context).pop();
        } else {
          dragOffset.value = 0.0; // 閾値に満たない場合は引き下げをリセットして元の定位置に戻す
        }
      },
      child: AnimatedContainer(
        // ドラッグ中（isDragging=true）は指に吸い付くように即時更新（Duration.zero）。
        // 指を離したとき（isDragging=false）は、250 msかけて元の位置に
        // スルスル戻すアニメーションを適用。
        duration: isDragging.value
            ? Duration.zero
            : const Duration(milliseconds: 250),
        // イージング
        curve: Curves.easeOutCubic,
        transform: Matrix4.translationValues(0, dragOffset.value, 0),
        child: Material(
          color: Colors.transparent,
          child: Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              // 画面のほとんどをスライド可能領域にする
              width: screenWidth,
              height: screenHeight * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min, // コンテンツサイズに合わせる
                children: [
                  // 1. 実際のトースト表示カード領域
                  Container(
                    width: screenWidth * 0.92,
                    // 【改善点】固定高 `height: cardHeight` を削除し、代わりにはみ出し防止の最小の高さを定義
                    constraints: const BoxConstraints(
                      minHeight: 80.0, // 1行などの短い通知でも美しく見えるよう、最小の高さを保証
                    ),
                    margin: EdgeInsets.only(
                      top:
                          MediaQuery.of(context).padding.top +
                          12, // スマホ最上部のステータスバーを避ける
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color:
                          backgroundColor ??
                          Theme.of(context).colorScheme.onSecondary,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.25),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // メッセージ表示部分
                        Expanded(
                          // 【改善点】スクローラーウィジェット（SingleChildScrollView）を削除。
                          // 代わりに、Textウィジェットが持つ本来の改行機能をそのまま利用し、横オーバーした場合は自動改行（折り返し）させます。
                          child: Text(
                            notifiedInfo.notification,
                            softWrap: true, // テキストを端で自動的に折り返す
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  textColor ??
                                  Theme.of(context).colorScheme.secondary,
                              height: 1.3,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        // 上下スワイプして閉じることができるUIであることを示すインジケーターアイコン
                        const Icon(
                          Icons.drag_handle,
                          color: Colors.white30,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  // 2. カード下側の透明な余白領域：トースト外をタップ/ドラッグした際も反応するスライド補助領域
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () => Navigator.of(context).pop(), // タップで閉じる
                      child: Container(color: Colors.transparent),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// todo printメソッド [notification_view.dart]
void _print(String s1, [String? s2, String? s3, String? s4, String? s5]) {
  if (kDebugMode) {
    print("");
    print("[notification_view.dart]　" + s1);
    if (s2 != null) print("[notification_view.dart]　" + s2);
    if (s3 != null) print("[notification_view.dart]　" + s3);
    if (s4 != null) print("[notification_view.dart]　" + s4);
    if (s5 != null) print("[notification_view.dart]　" + s5);
    print("");
  }
}
