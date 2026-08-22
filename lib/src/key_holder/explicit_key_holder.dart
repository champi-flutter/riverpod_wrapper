import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// todo （2026/08/18）＞＞
/// エイリアス付き整数型識別子管理オブジェクト
abstract class ExplicitKeyHolder {

  /// エイリアスから int の識別子を参照する
  int? key(String alias);

  /// int の識別子からエイリアスを参照する
  String? alias(int key);

  /// 新しい識別子を作成するメソッド
  Result<int, Exception> register({required String alias});

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  void clear();
}

/// エイリアス付き整数型識別子管理オブジェクトの実装部分
class ExplicitKeyHolderImpl implements ExplicitKeyHolder {
  final BiMap<String, int> _keys = BiMap<String, int>();

  /// エイリアスから int の識別子を参照する
  @override
  int? key(String alias)=>_keys[alias];

  /// int の識別子から alias を参照する
  ///
  /// fixme non-null にするかどうか
  @override
  String? alias(int key)=>_keys.getKey(key);

  /// 新しい識別子を作成するメソッド
  @override
  Result<int, Exception> register({required String alias}) {
    int candidate = 0;
    if (_keys.containsKey(alias)) {
      return Failure(
        Exception("[ExplicitKeyHolder.register] alias が重複しています。（$alias）"),
      );
    }
    // 使用されていない最小の数値を検索 (O(1))
    while (_keys.containsValue(candidate)) {
      candidate++;
    }

    // 見つかった識別子を登録して返す
    _keys[alias];
    return Success(candidate);
  }

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  @override
  void clear() {
    _keys.clear();
  }
}

// todo （2026/08/18）＞＞
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
Provider<ExplicitKeyHolder> explicitKeyHolder() =>
    Provider<ExplicitKeyHolder>((_) => ExplicitKeyHolderImpl());
