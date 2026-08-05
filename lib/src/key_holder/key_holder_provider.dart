import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 識別子管理オブジェクトの雛形
abstract class KeyHolderBase {
  /// 新しい識別子を作成するメソッド
  int register();

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  void clear();
}

/// 識別子管理オブジェクトの雛形の実装部分
class KeyHolderBaseImpl implements KeyHolderBase {
  final Set<int> _keys = {};

  /// 新しい識別子を作成するメソッド
  @override
  int register() {
    int candidate = 0;

    // 使用されていない最小の数値を検索 (O(1))
    while (_keys.contains(candidate)) {
      candidate++;
    }

    // 見つかった識別子を登録して返す
    _keys.add(candidate);
    return candidate;
  }

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  @override
  void clear() {
    _keys.clear();
  }
}

/// 識別子管理オブジェクト生成ツール
Provider<KeyHolderBase> keyHolder() =>
    Provider<KeyHolderBase>((_) => KeyHolderBaseImpl());
