

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_index_view_model.g.dart';

@riverpod
class PageIndexViewModel extends _$PageIndexViewModel {
  @override
  int build() => 0;

  void update(int newIndex) {
    if (state != newIndex) {
      state = newIndex;
    }
  }
}