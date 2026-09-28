

import 'package:custom_core_types/custom_core_types.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

class LazyMapViewState<K, V> extends LazyMap<K, LazyViewState<V>> {
  LazyMapViewState({
    required super.onAnyAccess,
    required super.onNewAccess,
    required V Function(K key) placeholder,
  }) : super(
    placeholder: (K key) => LazyViewState.placeholder(placeholder(key)),
  );
}