// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_pop_scope_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(extendedPopController)
const extendedPopControllerProvider = ExtendedPopControllerFamily._();

final class ExtendedPopControllerProvider
    extends
        $FunctionalProvider<
          ExtendedPopController,
          ExtendedPopController,
          ExtendedPopController
        >
    with $Provider<ExtendedPopController> {
  const ExtendedPopControllerProvider._({
    required ExtendedPopControllerFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'extendedPopControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$extendedPopControllerHash();

  @override
  String toString() {
    return r'extendedPopControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<ExtendedPopController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ExtendedPopController create(Ref ref) {
    final argument = this.argument as Token;
    return extendedPopController(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExtendedPopController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExtendedPopController>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ExtendedPopControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$extendedPopControllerHash() =>
    r'8bed15689cea748dc037e248c045d05f3b83a9b5';

final class ExtendedPopControllerFamily extends $Family
    with $FunctionalFamilyOverride<ExtendedPopController, Token> {
  const ExtendedPopControllerFamily._()
    : super(
        retry: null,
        name: r'extendedPopControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ExtendedPopControllerProvider call(Token token) =>
      ExtendedPopControllerProvider._(argument: token, from: this);

  @override
  String toString() => r'extendedPopControllerProvider';
}
