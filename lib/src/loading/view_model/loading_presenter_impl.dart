import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/loading/entity/loading_state.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';

/// 2026/04/03 追加: ローディング状態を管理するクラス
class LoadingPresenterImpl implements LoadingPresenter {
  LoadingPresenterImpl({required LoadingViewModel loadingViewModel})
    : _loadingViewModel = loadingViewModel;

  final LoadingViewModel _loadingViewModel;

  /// ローディングを 1 つ開始する
  @override
  void startLoading() => _loadingViewModel.increase();

  /// ローディングを 1 つ終了する
  @override
  void finishLoading() => _loadingViewModel.decrease();

  /// クラスごとの初期化完了フラグを設置するメソッド
  ///
  /// ここで設置したフラグを [getReady] で回収するまでアプリがローディングし続ける。
  @override
  void setReady({required Type classType}) => _loadingViewModel.setReady;

  /// クラスごとの初期化完了フラグを立てるメソッド
  @override
  void getReady({required Type classType}) => _loadingViewModel.getReady;

  /// エミュレータのデータをリセットした際の処理
  @override
  void onResetData()  => _loadingViewModel.onResetData;
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
