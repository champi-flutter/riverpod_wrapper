// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_bar_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// サイドバーVM

@ProviderFor(menuBarViewModel)
const menuBarViewModelProvider = MenuBarViewModelProvider._();

/// サイドバーVM

final class MenuBarViewModelProvider
    extends
        $FunctionalProvider<
          MenuBarViewModel,
          MenuBarViewModel,
          MenuBarViewModel
        >
    with $Provider<MenuBarViewModel> {
  /// サイドバーVM
  const MenuBarViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'menuBarViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$menuBarViewModelHash();

  @$internal
  @override
  $ProviderElement<MenuBarViewModel> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MenuBarViewModel create(Ref ref) {
    return menuBarViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MenuBarViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MenuBarViewModel>(value),
    );
  }
}

String _$menuBarViewModelHash() => r'ab1b8acac457ba0f318b213b009348214e6292c0';
