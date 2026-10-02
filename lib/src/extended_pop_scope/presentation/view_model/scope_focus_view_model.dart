

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

part 'scope_focus_view_model.g.dart';

enum ScopeStatus{
  /// フォーカスされた状態
  focused,

  /// フォーカスの解除を要求されている状態
  popRequested,

  /// フォーカスの解除が承認された状態
  popApproved,
}

@riverpod
class ScopeFocusViewModel extends _$ScopeFocusViewModel {

  @override
  ScopeStatus build(Token token)=>ScopeStatus.focused;

  void update(ScopeStatus newState){
    if(state != newState){
      state = newState;
    }
  }

}