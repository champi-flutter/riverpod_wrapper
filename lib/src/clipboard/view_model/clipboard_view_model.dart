import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/clipboard/use_case/clipboard_service.dart';

///
class ClipboardViewModel with LoadingHandler {
  ClipboardViewModel(this._ref);

  final Ref _ref;

  // todo 依存先
  /// [ClipboardService] のインスタンスを参照する getter
  ClipboardService get _clipboardService => _ref.read(clipboardServiceProvider);

  /// 通知送信先
  EventNotifier get _readEventNotifier => _ref.read(eventProvider);

  // todo ローディング関連
  /// 2026/05/12 追加: ローディング管理クラスのインスタンス
  @override
  LoadingViewModel get loadingVM =>
      _ref.read(loadingViewModelProvider.notifier);

  // todo 通知関連
  /// 完了通知メソッド
  void _notifySuccess() {
    _readEventNotifier.notifyInfo(
      type: NotificationType.success,
      notification: "クリップボードにコピーしました",
    );
  }

  /// クリップボードにコピーするメソッドÒ
  Future<void> copyToClipboard({required String word}) async {
    final Result<void, Exception> result = await _clipboardService
        .copyToClipboard(word);
    switch (result) {
      case Success():
        _notifySuccess();
      case Failure():
        // エラーの場合は、起こった段階で通知
        break;
    }
  }
}
