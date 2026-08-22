import 'package:custom_core_types/custom_core_types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 文字列型識別子管理オブジェクト
abstract class StringKeyHolder {
  /// 新しい識別子を作成するメソッド
  Result<void, Exception> add(String key);

  /// 対象の識別子を確認してから使用するメソッド
  Result<String, Exception> use(String key);

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  void clear();
}

/// 文字列型識別子管理オブジェクトの実装部分
class StringKeyHolderImpl implements StringKeyHolder {
  StringKeyHolderImpl({required Set<String> initialKeys})
    : _keys = initialKeys;

  final Set<String> _keys;

  /// 新しい識別子を作成するメソッド
  @override
  Result<void, Exception> add(String key) {
    // key が重複していないか確認する。
    if (_keys.contains(key)) {
      return Failure(Exception("key が重複しています。（$key）"));
    }
    // 指定 key を登録して、Success を返す
    _keys.add(key);
    return Success(null);
  }

  /// 対象の識別子を確認してから使用するメソッド
  @override
  Result<String, Exception> use(String key){
    // key が存在するか確認する
    if (!_keys.contains(key)){
      return Failure(Exception("指定の key が見つかりませんでした。（$key）"));
    }
    return Success(key);
  }

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  @override
  void clear() {
    _keys.clear();
  }
}

/// 識別子管理オブジェクト生成ツール
///
///  1. トップレベルで Provider を定義する。
///   ```
///   final pageKeyHolderProvider = stringKeyHolder(
///     initialKeys: {"HOME", "SETTING"},
///   );
///   ```
///
///  2. [Ref] を用いて依存性を注入する。
///   ```
///   pageKeyHolder: ref.watch(pageKeyHolderProvider),
///   ```
///
Provider<StringKeyHolder> stringKeyHolder({Set<String>? initialKeys}) =>
    Provider<StringKeyHolder>(
      (_) => StringKeyHolderImpl(initialKeys: initialKeys ?? {}),
    );
