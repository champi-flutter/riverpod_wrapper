import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/launch_support_providers.dart';
import 'package:riverpod_wrapper/src/loading/use_case/input_boundary/loading_service.dart';
import 'package:riverpod_wrapper/src/loading/view_model/general_loading_view_model.dart';
import 'package:riverpod_wrapper/src/notification/type_definition/notification_typedef.dart';
import 'package:riverpod_wrapper/src/notification/use_case/notification_service.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/use_case/launch_support_link_service.dart';

/// サイドメニューVMクラス
///
/// 描画には関わらないので ChangeNotifier である必要はない。
///
/// 2026/05/12 変更: [LoadingHandler] を mixin 。
class MenuBarViewModel {
  // todo コンストラクタ
  MenuBarViewModel({
    required NotificationService notificationService,
    required LaunchSupportLinkService launchSupportLinkService,
    required LoadingService loadingService,
  }) : _notificator = notificationService,
       _launchSupportLinkService = launchSupportLinkService,
       _loader = loadingService;

  // todo 依存先
  /// 通知送信先
  final NotificationService _notificator;

  /// 外部通信サービスクラスのインスタンス
  ///
  /// 2026/05/10 変更: DIをコンストラクタ注入に変更
  final LaunchSupportLinkService _launchSupportLinkService;

  // todo ローディング関連
  /// ローディングの呼び出し元
  final LoadingService _loader;

  // todo 通知関連
  /// レポート送信完了通知メソッド
  void _notifySuccess() {
    _notificator.notifyInfo(
      layer: NotificationFrom.gateway,
      type: NotificationType.confirm,
      notification: "不具合を送信しました。\nご協力ありがとうございます。",
    );
  }

  /// 利用規約タップメソッド
  Future<void> onTermsTapped({required String termsUrl}) =>
      _loader.loadAsync(() async {
        await _launchSupportLinkService.openUrl(strUrl: termsUrl);
      });

  /// 利用規約タップメソッド
  Future<void> onPrivacyPolicyTapped({required String privacyPolicyUrl}) =>
      _loader.loadAsync(() async {
        await _launchSupportLinkService.openUrl(strUrl: privacyPolicyUrl);
      });

  /// レポート送信メソッド
  Future<void> reportIssues({required String subject, required String body})
  // 折りたたみ用
  async {
    Result<void, Exception>? _result;
    await _loader.loadAsync(() async {
      _result = await _launchSupportLinkService.sendEmail(
        subject: subject,
        body: body,
        developersEmail: "",
        // PrivateConfig.developersEmail,
      );
    });
    switch (_result) {
      // 送信完了の結果が帰ってきたら、View層に通知
      case Success():
        _notifySuccess();
        break;
      // エラーが発生した場合は、発生した場所で通知される
      case Failure():
        break;
      case null:
        break;
    }
  }

  /// ストア画面遷移メソッド
  Future<void> onFeedback({required String storeUrl}) =>
      _loader.loadAsync(() async {
        await _launchSupportLinkService.openUrl(strUrl: storeUrl);
      });
}
