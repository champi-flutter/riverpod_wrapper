

import 'package:riverpod_annotation/riverpod_annotation.dart';

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
  ScopeStatus build()=>ScopeStatus.focused;

  void update(ScopeStatus newState){
    if(state != newState){
      state = newState;
    }
  }

}