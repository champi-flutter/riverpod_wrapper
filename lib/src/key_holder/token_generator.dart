import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 型指定の自動生成識別子管理オブジェクト
abstract interface class _TokenGenerator {
  /// 新しい識別子を作成するメソッド
  ///
  /// 作成した識別子は戻り値として返される。
  Token register();
}

/// 型指定の自動生成識別子管理オブジェクトの実装部分
class _TokenGeneratorImpl implements _TokenGenerator {

  _TokenGeneratorImpl(): _next = Token(0);

  /// 次に追加する key
  Token _next;

  /// 新しい識別子を作成するメソッド
  @override
  Token register() =>_next++;
}

/// シングルトンインスタンスを提供する Provider
final _tokenGeneratorProvider = Provider<_TokenGenerator>((ref) {
  // 常に同一のインスタンスを返す
  return _TokenGeneratorImpl();
});

// Ref 用
extension ReferToTokenGenerator on Ref{
  /// [Token] を生成し、取得する
  Token generateToken() => read(_tokenGeneratorProvider).register();
}

// WidgetRef 用
extension ReferToTokenGeneratorOnWidget on WidgetRef{
  /// [Token] を生成し、取得する
  Token generateToken() => read(_tokenGeneratorProvider).register();
}

/// 整数の本体を内包する識別子
class Token implements Comparable<Token> {
  final int body;
  const Token(this.body);

  // 算術演算子達
  Token operator +(Object other) {
    if (other is int) return Token(body + other);
    if (other is Token) return Token(body + other.body);
    throw ArgumentError('Unsupported type: $other');
  }

  Token operator -(Object other) {
    if (other is int) return Token(body - other);
    if (other is Token) return Token(body - other.body);
    throw ArgumentError('Unsupported type: $other');
  }

  // 比較演算子達
  bool operator <(Token other) => body < other.body;
  bool operator <=(Token other) => body <= other.body;
  bool operator >(Token other) => body > other.body;
  bool operator >=(Token other) => body >= other.body;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is Token && body == other.body);

  @override
  int get hashCode => body.hashCode;

  @override
  int compareTo(Token other) => body.compareTo(other.body);

  // 計算ロジックども
  /// [other] と比べて小さい方を返す
  Token min(Token other) => body <= other.body ? this : other;

  /// [other] と比べて大きい方を返す
  Token max(Token other) => body >= other.body ? this : other;

  @override
  String toString() => 'Token($body)';
}
