import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/clipboard/use_case/clipboard_service.dart';
import 'package:riverpod_wrapper/src/loading/use_case/input_boundary/loading_service.dart';

///
class ClipboardViewModel {
  ClipboardViewModel({required ClipboardService clipboardService,
    required NotificationService notificationService,
    required LoadingService loadingService,
  }) : _notificator = notificationService,
        _clipboardService = clipboardService,
        _loader = loadingService;

  // todo 依存先
  /// [ClipboardUseCase] のインスタンスを参照する getter
  final ClipboardService _clipboardService;

  /// 通知送信先
  final NotificationService _notificator;

  // todo ローディング関連
  /// ローディングの呼び出し元
  final LoadingService _loader;

  // todo 通知関連
  /// 完了通知メソッド
  void _notifySuccess() {
    _notificator.notifyInfo(
      type: NotificationType.success,
      notification: "クリップボードにコピーしました",
    );
  }

  /// クリップボードにコピーするメソッド
  Future<void> copyToClipboard({required String word}) =>
      _loader.loadAsync(() async {
        final Result<void, Exception> result = await _clipboardService
            .copyToClipboard(word);
        switch (result) {
          case Success():
            _notifySuccess();
          case Failure():
            // エラーの場合は、起こった段階で通知
            break;
        }
      });
}
