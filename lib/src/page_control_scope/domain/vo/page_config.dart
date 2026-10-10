import 'package:custom_core_types/custom_core_types.dart';
import 'package:riverpod_wrapper/src/page_control_scope/domain/vo/page_key.dart';

/// [PageKey] とインデックスを紐づける固定長リストクラス
///
/// `List<PageKey>` を当てはめる。
class PageKeyList extends FixedList<PageKey> {
  PageKeyList(List<PageKey> keyList)
    : assert(_hasNoDuplicates(keyList), "[PageKeyList] key に重複があります。"),
      super.fromIterable(keyList.length, keyList);

  PageKeyList._copy(super.list) : super.copy();

  @override
  PageKeyList get deepCopy => PageKeyList._copy(toEntryList());

  /// 重複チェックのロジック（O(n)）
  static bool _hasNoDuplicates(List<PageKey> list) {
    final uniqueKeys = list.map((item) => item.key).toSet();
    // key に重複がなければ、List も Set も同数になる
    return uniqueKeys.length == list.length;
  }
}

/// ドメインとして定義するページの情報
class PageConfig {
  const PageConfig({required this.keyList});

  /// 識別子のリスト
  final PageKeyList keyList;

  /// ページ数
  int get numberOfPages => keyList.length;
}
