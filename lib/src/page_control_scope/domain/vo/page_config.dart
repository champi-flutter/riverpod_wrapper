

import 'package:custom_core_types/custom_core_types.dart';
import 'package:riverpod_wrapper/src/page_control_scope/domain/vo/page_key.dart';

class PageKeyList extends FixedList<PageKey>{
  
  PageKeyList(super.length, super.iterable): super.fromIterable();
  
  PageKeyList._copy(super.list): super.copy();
  
  @override
  PageKeyList get deepCopy => PageKeyList._copy(toEntryList());
  
}

/// ドメインとして定義するページの情報
class PageConfig {
  const PageConfig({required this.keyList});

  /// 識別子のリスト
  final PageKeyList keyList;

  /// ページ数
  int get numberOfPages => keyList.length;
}