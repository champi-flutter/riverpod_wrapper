
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_index_state.freezed.dart';

@freezed
abstract class PageIndexState with _$PageIndexState{

  const PageIndexState._();

  const factory PageIndexState({
    required int currentIndex,
    required int? pendingIndex,
  }) = _PageIndexState;

}