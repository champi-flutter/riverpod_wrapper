import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/platform_features/use_case/driver_interface/platform_features_driver.dart';

class ClipboardService {
  ClipboardService({required NotificationService notificationService,
    required PlatformFeaturesDriver platformFeaturesDriver,
  }): _notificator = notificationService, _platformFeatures = platformFeaturesDriver;

  // todo 依存先
  /// 通知送信先
  final NotificationService _notificator;

  /// プラットフォームの機能へのインターフェース
  final PlatformFeaturesDriver _platformFeatures;

  /// 2026/05/13 追加: エラーハンドリング
  void _notifyError(String error) {
    _notificator.notifyInfo(
      layer: NotificationFrom.useCase,
      type: NotificationType.error,
      notification: "[clipboard_use_case] " + error,
    );
  }

  /// 文字列をクリップボードにコピーする
  Future<Result<void, Exception>> copyToClipboard(String word) async {
    try {
      if (word.isEmpty) {
        throw Exception("文字が空です。");
      }
      // プラットフォームの機能を、インターフェースをかいして呼び出す
      await _platformFeatures.copyToClipboard(word);
      return Success(null);
    } catch (e) {
      _notifyError(e.toString());
      return Failure(Exception(e));
    }
  }

  /// クリップボードから文字列を取得する
  Future<Result<String?, Exception>> pasteFromClipboard() async {
    try {
      // プラットフォームの機能を、インターフェースを介して呼び出す
      final String? text = await _platformFeatures.pasteFromClipboard();
      return Success(text);
    } catch (e) {
      _notifyError(e.toString());
      return Failure(Exception(e));
    }
  }
}
