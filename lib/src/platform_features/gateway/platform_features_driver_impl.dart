
import 'package:flutter/services.dart';
import 'package:riverpod_wrapper/src/platform_features/use_case/driver_interface/platform_features_driver.dart';

/// プラットフォームの機能を呼び出す実装クラス
class PlatformFeaturesDriverImpl implements PlatformFeaturesDriver{
  // todo クリップボード
  /// クリップボードに文字列をセットする
  @override
  Future<void> copyToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }

  /// クリップボードから文字列を取得する
  @override
  Future<String?> pasteFromClipboard() async {
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    return data?.text;
  }
}