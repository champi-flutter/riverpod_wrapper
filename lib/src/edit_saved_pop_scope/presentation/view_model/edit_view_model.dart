import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_view_model.g.dart';

@riverpod
class EditViewModel extends _$EditViewModel{

  // todo 初期化
  @override
  bool build(){
    return false;
  }

  void update(bool newState){
    if(state != newState){
      state = newState;
    }
  }

}