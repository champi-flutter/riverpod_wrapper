import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_saving_controller.g.dart';

@riverpod
class EditSavingController extends _$EditSavingController{

  // todo 初期化
  @override
  bool build(){
    return false;
  }

  /// 編集時に [state] を `true` にする
  void onEdited (){
    if(!state) {
      state = true;
    }
  }

  /// 編集保存時に [state] を `false` にする
  void onSaved(){
    if(state) {
      state = false;
    }
  }

  /// 編集破棄時に [state] を `false` にする
  void onDiscarded(){
    if(state) {
      state = false;
    }
  }

}