import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/src/loading/entity/loading_state.dart';

part 'loading_view_model.g.dart';

/// 2026/04/03 追加: ローディングを管理するクラス
@riverpod
class LoadingViewModel extends _$LoadingViewModel {

  @override
  LoadingState build (){
    return const LoadingState();
  }

  /// [LoadingState.loadingProcess] を 1 増やす
  void _startLoading() {
    state = state.copyWith(loadingProcess: state.loadingProcess +1);
    _print("ローディングが開始（loadingProcess: ${state.loadingProcess}）");
  }

  /// [LoadingState.loadingProcess] を 1 減らす
  void _finishLoading() {
    state = state.copyWith(loadingProcess: state.loadingProcess -1);
    _print("ローディングが終了（loadingProcess: ${state.loadingProcess}）");
  }

  /// ローディング処理
  Future<T> loadAsync<T>(Future<T> Function() action) async {
    // ローディング開始
    _startLoading();
    // 処理本体
    final T result = await action();
    // ローディング終了
    _finishLoading();
    return result;
  }

  /// クラスごとの初期化完了フラグを設置するメソッド
  void setIsReady({required Type classType}) {
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

/// ローディング処理を扱う mixin
///
/// 記述の簡略化のため
mixin LoadingHandler {
  /// [LoadingViewModel]を取得するための抽象メソッド
  LoadingViewModel get loadingVM;

  /// ローディング処理
  Future<T> loadAsync<T>(Future<T> Function() action) async {
    // ローディング開始
    return await loadingVM.loadAsync(action);
  }
}

/// todo printメソッド [ローディング管理クラス]
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
