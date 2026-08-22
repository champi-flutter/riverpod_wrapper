
import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_loading_state.freezed.dart';

@freezed
abstract class GeneralLoadingState with _$GeneralLoadingState {
  const factory GeneralLoadingState({
    @Default(0) int loading,
    @Default(<Type, bool>{}) Map<Type, bool> isReadyMap,
    @Default(false) bool shouldReset,
  }) = _GeneralLoadingState;

  // getter を freezed クラス内に定義するためのカスタムコンストラクタ
  const GeneralLoadingState._();

  /// ローディング表示を有効にするかどうか
  ///
  /// ローディングが始まると`true`になる。
  bool get isLoading => loading > 0 || !isReady;

  bool get isReady => !isReadyMap.containsValue(false);
}
