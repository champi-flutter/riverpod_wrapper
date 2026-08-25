import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 整数型自動生成識別子管理オブジェクト
abstract class AutoIntegerKeyHolder {
  /// 新しい識別子を作成するメソッド
  ///
  /// 作成した識別子は戻り値として返される。
  int register();

  /// [key] があるのを確認してから使用するメソッド
  int use(int key);

  /// 指定 [key] を使用し、登録から消す。
  int consume(int key);

  /// 今ある [key] の中の先頭のデータ
  int? get firstIn;
  
  /// 指定 [key] の登録を消すメソッド
  void unregister(int key);

  /// このオブジェクトが管理する識別子をすべて破棄するメソッド
  void clearAll();
}

/// 整数型自動生成識別子管理オブジェクトの実装部分
class AutoIntegerKeyHolderImpl implements AutoIntegerKeyHolder {

  AutoIntegerKeyHolderImpl(): _next = 0;

  final Set<int> _keys = {};

  /// 次に追加する key
  int _next;

  /// 新しい識別子を作成するメソッド
  @override
  int register() {
    _next++;
    // _next を登録して返す
    _keys.add(_next);
    return _next;
  }

  /// [key] があるのを確認してから使用するメソッド
  @override
  int use(int key){
    if(!_keys.contains(key)){
      throw Exception("指定の key が見つかりませんでした。（$key）");
    }
    return key;
  }

  /// 指定 [key] を使用し、登録から消す。
  @override
  int consume(int key){
    final int consumed = use(key);
    unregister(consumed);
    return consumed;
  }

  /// 今ある [key] の中の先頭のデータ
  @override
  int? get firstIn=> _keys.isEmpty ? null : _keys.reduce(min);

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
