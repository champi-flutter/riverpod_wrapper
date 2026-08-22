import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/src/loading/entity/general_loading_state.dart';

part 'general_loading_view_model.g.dart';

/// 2026/04/03 追加: ローディング状態を管理するクラス
@riverpod
class GeneralLoadingViewModel extends _$GeneralLoadingViewModel{

  @override
  GeneralLoadingState build (){
    return const GeneralLoadingState();
  }

  /// ローディングを 1 増やす
  void increase(){
    state = state.copyWith(loading: state.loading +1);
    _print("ローディングが開始（loading: ${state.loading}）");
  }

  /// ローディングを 1 減らす
  void decrease(){
    state = state.copyWith(loading: state.loading -1);
    _print("ローディングが終了（loading: ${state.loading}）");
  }

  /// クラスごとの初期化完了フラグを設置するメソッド
  void setReady({required Type classType}) {
    if (!state.isReadyMap.containsKey(classType)) {
      _print("setIsReady : $classType");

      // Map をイミュータブル（不変）として更新するため、新しいMapを作成して代入
      final newMap = Map<Type, bool>.from(state.isReadyMap);
      newMap[classType] = false;

      state = state.copyWith(isReadyMap: newMap);
      _print("setIsReady: _isReady = ${state.isReadyMap}");
    }
  }

  /// クラスごとの初期化完了フラグを立てるメソッド
  void getReady({required Type classType}) {
    assert(
    state.isReadyMap.containsKey(classType),
    "そのクラスの LoadingViewModel.isReadyMap がセットされていません。",
    );

    final newMap = Map<Type, bool>.from(state.isReadyMap);
    newMap[classType] = true;

    state = state.copyWith(isReadyMap: newMap);
    _print("getReady : $classType", "isReady = ${state.isReady}");
  }

  /// エミュレータのデータをリセットした際の処理
  void onResetData() {
    state = state.copyWith(shouldReset: true);
  }
}

/// printメソッド [ローディング管理クラス]
void _print(String s1, [String? s2, String? s3, String? s4, String? s5]) {
  if (kDebugMode) {
    print("");
    print("[ローディング管理クラス]　" + s1);
    if (s2 != null) print("[ローディング管理クラス]　" + s2);
    if (s3 != null) print("[ローディング管理クラス]　" + s3);
    if (s4 != null) print("[ローディング管理クラス]　" + s4);
    if (s5 != null) print("[ローディング管理クラス]　" + s5);
    print("");
  }
}
