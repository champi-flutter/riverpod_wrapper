// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_control_scope_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pageNavigationController)
const pageNavigationControllerProvider = PageNavigationControllerFamily._();

final class PageNavigationControllerProvider
    extends
        $FunctionalProvider<
          PageNavigationController,
          PageNavigationController,
          PageNavigationController
        >
    with $Provider<PageNavigationController> {
  const PageNavigationControllerProvider._({
    required PageNavigationControllerFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'pageNavigationControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pageNavigationControllerHash();

  @override
  String toString() {
    return r'pageNavigationControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<PageNavigationController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PageNavigationController create(Ref ref) {
    final argument = this.argument as Token;
    return pageNavigationController(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PageNavigationController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PageNavigationController>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PageNavigationControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pageNavigationControllerHash() =>
    r'250c3ebbb6501faa220b6ca9dc8110d65abf5ca7';

final class PageNavigationControllerFamily extends $Family
    with $FunctionalFamilyOverride<PageNavigationController, Token> {
  const PageNavigationControllerFamily._()
    : super(
        retry: null,
        name: r'pageNavigationControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PageNavigationControllerProvider call(Token token) =>
      PageNavigationControllerProvider._(argument: token, from: this);

  @override
  String toString() => r'pageNavigationControllerProvider';
}

@ProviderFor(pendingNavigationController)
const pendingNavigationControllerProvider =
    PendingNavigationControllerFamily._();

final class PendingNavigationControllerProvider
    extends
        $FunctionalProvider<
          PendingNavigationController,
          PendingNavigationController,
          PendingNavigationController
        >
    with $Provider<PendingNavigationController> {
  const PendingNavigationControllerProvider._({
    required PendingNavigationControllerFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'pendingNavigationControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pendingNavigationControllerHash();

  @override
  String toString() {
    return r'pendingNavigationControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<PendingNavigationController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PendingNavigationController create(Ref ref) {
    final argument = this.argument as Token;
    return pendingNavigationController(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PendingNavigationController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PendingNavigationController>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PendingNavigationControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pendingNavigationControllerHash() =>
    r'db7f827c7d89e23967f0c4472a59f12d19c52081';

final class PendingNavigationControllerFamily extends $Family
    with $FunctionalFamilyOverride<PendingNavigationController, Token> {
  const PendingNavigationControllerFamily._()
    : super(
        retry: null,
        name: r'pendingNavigationControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PendingNavigationControllerProvider call(Token token) =>
      PendingNavigationControllerProvider._(argument: token, from: this);

  @override
  String toString() => r'pendingNavigationControllerProvider';
}
