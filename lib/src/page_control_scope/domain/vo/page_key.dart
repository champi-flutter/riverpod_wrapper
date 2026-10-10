
/// ドメインとして定義するページの識別子（[String]）を持つクラス
class PageKey{
  const PageKey(this.key);

  /// fixme 本体はプライベートでもいいかも（2026/10/10）＞＞
  final String key;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PageKey && other.key == key;
  }

  @override
  int get hashCode => key.hashCode;
}