import 'package:custom_core_types/custom_core_types.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

/// key を指定して遅延初期化を行う ViewModel の型
class LazyMapViewState<K, V> extends LazyMap<K, LazyViewState<V>> {
  LazyMapViewState({
    super.initialData,
    required super.onAnyAccess,
    required super.onNewAccess,
    required V Function(K key) placeholder,
  }) : super(
         placeholder: (K key) => LazyViewState.placeholder(placeholder(key)),
       );

  /// コピーメソッドのためのプライベートなコンストラクタ
  LazyMapViewState._copy({
    required Map<K, LazyViewState<V>> source,
    required super.onAnyAccess,
    required super.onNewAccess,
    required super.placeholder,
  }) : super(initialData: source);

  /// 受信データを当てはめたコピーを返す
  LazyMapViewState<K, V> copyReception(K key, V value) =>
      copyWith(key, LazyViewState.data(value));

  /// [copyWith] の override
  ///
  /// 呼び出しは、他のメソッドに限定する。
  @protected
  @override
  LazyMapViewState<K, V> copyWith(K key, LazyViewState<V> value) {
    final newMap = Map<K, LazyViewState<V>>.of(source)..[key] = value;
    return LazyMapViewState._copy(
      source: newMap,
      onAnyAccess: onAnyAccess,
      onNewAccess: onNewAccess,
      placeholder: placeholder,
    );
  }

  @override
  LazyMapViewState<K, V> copyAs(Map<K, LazyViewState<V>> newMap) {
    return LazyMapViewState._copy(
      source: newMap,
      onAnyAccess: onAnyAccess,
      onNewAccess: onNewAccess,
      placeholder: placeholder,
    );
  }
}
