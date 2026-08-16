import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/clipboard/use_case/clipboard_use_case.dart';
import 'package:riverpod_wrapper/src/loading/use_case/input_boundary/loading_use_case.dart';

///
class ClipboardViewModel {
  ClipboardViewModel({required ClipboardUseCase clipboardUseCase,
    required NotificationUseCase notificationUseCase,
    required LoadingUseCase loadingUseCase,
  }) : _notificator = notificationUseCase,
        _clipboardUseCase = clipboardUseCase,
        _loader = loadingUseCase;

  // todo 依存先
  /// [ClipboardUseCase] のインスタンスを参照する getter
  final ClipboardUseCase _clipboardUseCase;

  /// 通知送信先
  final NotificationUseCase _notificator;

  // todo ローディング関連
  /// ローディングの呼び出し元
  final LoadingUseCase _loader;

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
        final Result<void, Exception> result = await _clipboardUseCase
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
