// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_pop_scope_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(popScopeFocusController)
const popScopeFocusControllerProvider = PopScopeFocusControllerProvider._();

final class PopScopeFocusControllerProvider
    extends
        $FunctionalProvider<
          PopScopeFocusController,
          PopScopeFocusController,
          PopScopeFocusController
        >
    with $Provider<PopScopeFocusController> {
  const PopScopeFocusControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'popScopeFocusControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$popScopeFocusControllerHash();

  @$internal
  @override
  $ProviderElement<PopScopeFocusController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PopScopeFocusController create(Ref ref) {
    return popScopeFocusController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PopScopeFocusController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PopScopeFocusController>(value),
    );
  }
}

String _$popScopeFocusControllerHash() =>
    r'7868bfeec2d81d313e48864deeef3b5d4a8364fb';
