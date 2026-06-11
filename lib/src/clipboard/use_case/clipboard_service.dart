import 'package:custom_core_types/custom_core_types.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

class ClipboardService {
  ClipboardService(this._ref);

  final Ref _ref;

  // todo 依存先
  /// 通知送信先
  EventNotifier get _readEventNotifier => _ref.read(eventProvider);

  /// 2026/05/13 追加: エラーハンドリング
  void _notifyError(String error) {
    _readEventNotifier.notifyInfo(
      layer: NotificationFrom.gateway,
      type: NotificationType.error,
      notification: "[clipboard_service] " + error,
    );
  }

  /// 文字列をクリップボードにコピーする
  Future<Result<void, Exception>> copyToClipboard(String word) async {
    try {
      if (word.isEmpty) {
        throw Exception("文字が空です。");
      }
      await Clipboard.setData(ClipboardData(text: word));
      return Success(null);
    } catch(e){
      _notifyError(e.toString());
      return Failure(Exception(e));
    }
  }

  /// クリップボードから文字列を取得する
  Future<Result<String?, Exception>> pasteFromClipboard() async {
    try {
      final data = await Clipboard.getData(Clipboard.kTextPlain);
      return Success(data?.text);
    } catch(e){
      _notifyError(e.toString());
      return Failure(Exception(e));
    }
  }
}