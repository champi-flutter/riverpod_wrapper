import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/di/providers.dart';
import 'package:riverpod_wrapper/loading/view_model/loading_view_model.dart';
import 'package:riverpod_wrapper/notification/type_definition/notification_typedef.dart';
import 'package:riverpod_wrapper/notification/use_case/event_notifier.dart';
import 'package:riverpod_wrapper/scaffold_menu_bar/use_case/launch_support_link_service.dart';

/// サイドメニューVMクラス
///
/// 描画には関わらないので ChangeNotifier である必要はない。
///
/// 2026/05/12 変更: [LoadingHandler] を mixin 。
class MenuBarViewModel with LoadingHandler {
  final Ref _ref;

  // todo コンストラクタ
  MenuBarViewModel(this._ref);

  // todo 依存先
  /// 通知送信先
  EventNotifier get _readEventNotifier => _ref.read(eventProvider);

  /// 外部通信サービスクラスのインスタンス
  ///
  /// 2026/05/10 変更: DIをコンストラクタ注入に変更
  LaunchSupportLinkService get _readService =>
      _ref.read(launchSupportLinkServiceProvider);

  // todo ローディング関連
  /// 2026/05/12 追加: ローディング管理クラスのインスタンス
  @override
  LoadingViewModel get loadingVM =>
      _ref.read(loadingViewModelProvider.notifier);

  // todo 通知関連
  /// レポート送信完了通知メソッド
  void _notifySuccess() {
    _readEventNotifier.notifyInfo(
      layer: NotificationFrom.gateway,
      type: NotificationType.confirm,
      notification: "不具合を送信しました。\nご協力ありがとうございます。",
    );
  }

  /// 利用規約タップメソッド
  Future<void> onTermsTapped({required String termsUrl}) => loadAsync(() async {
    await _readService.openUrl(strUrl: termsUrl);
  });

  /// 利用規約タップメソッド
  Future<void> onPrivacyPolicyTapped({required String privacyPolicyUrl}) =>
      loadAsync(() async {
        await _readService.openUrl(strUrl: privacyPolicyUrl);
      });

  /// レポート送信メソッド
  Future<void> reportIssues({
    required String subject,
    required String body,
  })
  // 折りたたみ用
  async {
    Result<void, Exception>? _result;
    await loadAsync(() async {
      _result = await _readService.sendEmail(
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
  Future<void> onFeedback({required String storeUrl}) => loadAsync(()async{
    await _readService.openUrl(strUrl: storeUrl);
  });
}
