import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/page_control_scope/presentation/view_state/page_index_state.dart';

part 'page_index_view_model.g.dart';


@riverpod
class PageIndexViewModel extends _$PageIndexViewModel {
  @override
  PageIndexState build(Token token) => PageIndexState(currentIndex: 0, pendingIndex: 0,);

  void update(int targetIndex){
    if(state.currentIndex != targetIndex){
      state = state.copyWith(currentIndex: targetIndex);
    }
  }

  void pend(int targetIndex) {
    if (state.pendingIndex != targetIndex) {
      state = state.copyWith(pendingIndex: targetIndex);
    }
  }

  void apply() {
    final int? targetIndex = state.pendingIndex;
    if (targetIndex != null && targetIndex != state.currentIndex) {
      state = state.copyWith(currentIndex: targetIndex, pendingIndex: null);
    }
  }
}