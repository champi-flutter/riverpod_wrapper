import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 整数型自動生成識別子管理オブジェクト
abstract class AutoIntegerKeyHolder {
  /// 新しい識別子を作成するメソッド
  ///
  /// 作成した識別子は戻り値として返される。
  int register();

  /// [key] があるのを確認してから使用するメソッド
  int use(int key);
  
  /// 指定 [key] の登録を消すメソッド
  void unregister(int key);

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  void clearAll();
}

/// 整数型自動生成識別子管理オブジェクトの実装部分
class AutoIntegerKeyHolderImpl implements AutoIntegerKeyHolder {
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

  /// [key] があるのを確認してから使用するメソッド
  @override
  int use(int key){
    if(!_keys.contains(key)){
      throw Exception("指定の key が見つかりませんでした。（$key）");
    }
    return key;
  }

  /// 指定 [key] の登録を消すメソッド
  @override
  void unregister(int key){
    if(!_keys.contains(key)){
      throw Exception("指定の key が見つかりませんでした。（$key）");
    }
    _keys.remove(key);
  }

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  @override
  void clearAll() {
    _keys.clear();
  }
}

/// 識別子管理オブジェクト生成ツール
///
///  1. トップレベルで Provider を定義する。
///   ```
///   final userKeyHolderProvider = keyHolder();
///   ```
///
///  2. [Ref] を用いて依存性を注入する。
///   ```
///   userKeyHolder: ref.watch(userKeyHolderProvider),
///   ```
///
Provider<AutoIntegerKeyHolder> autoIntegerKeyHolder() =>
    Provider<AutoIntegerKeyHolder>((_) => AutoIntegerKeyHolderImpl());
