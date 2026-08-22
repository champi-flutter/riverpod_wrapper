import 'package:flutter/foundation.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';
import 'package:riverpod_wrapper/src/loading/view_model/general_loading_view_model.dart';
import 'package:riverpod_wrapper/src/loading/view_model/specific_loading_view_model.dart';

/// 2026/04/03 追加: ローディング状態を管理するクラス
class LoadingPresenterImpl implements LoadingPresenter {
  LoadingPresenterImpl({
    required GeneralLoadingViewModel loadingViewModel,
    required SpecificLoadingViewModel Function(int key) readSpecificLoadingViewModel,
  })
    : _generalLoadingVM = loadingViewModel, _readSpecificLoadingVM = readSpecificLoadingViewModel;

  /// 全体ローディング表示状態クラス
  final GeneralLoadingViewModel _generalLoadingVM;

  /// 固有ローディング管理クラス
  final SpecificLoadingViewModel Function(int key) _readSpecificLoadingVM;
  

  /// ローディングを 1 つ開始する
  ///
  /// [key] が指定された場合、固有ローディングを開始する。
  @override
  void startLoading({int? key}) {
    if(key == null) {
      _generalLoadingVM.increase();
    } else {
      _readSpecificLoadingVM(key).start();
    }
  }

  /// ローディングを 1 つ終了する
  ///
  /// [key] が指定された場合、固有ローディングを終了する。
  @override
  void finishLoading({int? key}) {
    if(key == null) {
      _generalLoadingVM.decrease();
    } else {
      _readSpecificLoadingVM(key).stop();
    }
  }

  /// クラスごとの初期化完了フラグを設置するメソッド
  ///
  /// ここで設置したフラグを [getReady] で回収するまでアプリがローディングし続ける。
  @override
  void setReady({required Type classType}) => _generalLoadingVM.setReady;

  /// クラスごとの初期化完了フラグを立てるメソッド
  @override
  void getReady({required Type classType}) => _generalLoadingVM.getReady;

  /// エミュレータのデータをリセットした際の処理
  @override
  void onResetData()  => _generalLoadingVM.onResetData;
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
