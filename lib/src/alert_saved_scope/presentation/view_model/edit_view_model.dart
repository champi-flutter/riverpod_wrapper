import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

part 'edit_view_model.g.dart';

@riverpod
class EditViewModel extends _$EditViewModel{

  // todo 初期化
  @override
  bool build(Token token){
    return false;
  }

  void update(bool newState){
    if(state != newState){
      state = newState;
    }
  }

}