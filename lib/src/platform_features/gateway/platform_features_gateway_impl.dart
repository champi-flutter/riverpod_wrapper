
import 'package:flutter/services.dart';
import 'package:riverpod_wrapper/src/platform_features/use_case/gateway_interface/platform_features_gateway.dart';

/// プラットフォームの機能を呼び出す実装クラス
class PlatformFeaturesGatewayImpl implements PlatformFeaturesGateway{
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