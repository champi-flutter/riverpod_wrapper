
import 'package:freezed_annotation/freezed_annotation.dart';

part 'specific_loading_state.freezed.dart';

@freezed
abstract class SpecificLoadingState with _$SpecificLoadingState {
  const factory SpecificLoadingState({
    @Default(0) int loading,
  }) = _SpecificLoadingState;

  // getter を freezed クラス内に定義するためのカスタムコンストラクタ
  const SpecificLoadingState._();

  /// ローディング表示を有効にするかどうか
  ///
  /// ローディングが始まると`true`になる。
  bool get isLoading => loading > 0;
}