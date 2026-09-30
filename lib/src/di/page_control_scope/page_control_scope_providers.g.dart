// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_control_scope_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pageNavigationController)
const pageNavigationControllerProvider = PageNavigationControllerProvider._();

final class PageNavigationControllerProvider
    extends
        $FunctionalProvider<
          PageNavigationController,
          PageNavigationController,
          PageNavigationController
        >
    with $Provider<PageNavigationController> {
  const PageNavigationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pageNavigationControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pageNavigationControllerHash();

  @$internal
  @override
  $ProviderElement<PageNavigationController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PageNavigationController create(Ref ref) {
    return pageNavigationController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PageNavigationController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PageNavigationController>(value),
    );
  }
}

String _$pageNavigationControllerHash() =>
    r'900bc0e9c85ccfd7ff0b5d8164b007065ef4259a';

@ProviderFor(pageNavigationPresenter)
const pageNavigationPresenterProvider = PageNavigationPresenterProvider._();

final class PageNavigationPresenterProvider
    extends
        $FunctionalProvider<
          PageNavigationPresenter,
          PageNavigationPresenter,
          PageNavigationPresenter
        >
    with $Provider<PageNavigationPresenter> {
  const PageNavigationPresenterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pageNavigationPresenterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pageNavigationPresenterHash();

  @$internal
  @override
  $ProviderElement<PageNavigationPresenter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PageNavigationPresenter create(Ref ref) {
    return pageNavigationPresenter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PageNavigationPresenter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PageNavigationPresenter>(value),
    );
  }
}

String _$pageNavigationPresenterHash() =>
    r'b2b9ed0174396d6cd31a79b284e2eb0b62a93a6b';

@ProviderFor(navigatePageUseCase)
const navigatePageUseCaseProvider = NavigatePageUseCaseProvider._();

final class NavigatePageUseCaseProvider
    extends
        $FunctionalProvider<
          NavigatePageUseCase,
          NavigatePageUseCase,
          NavigatePageUseCase
        >
    with $Provider<NavigatePageUseCase> {
  const NavigatePageUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'navigatePageUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$navigatePageUseCaseHash();

  @$internal
  @override
  $ProviderElement<NavigatePageUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NavigatePageUseCase create(Ref ref) {
    return navigatePageUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NavigatePageUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NavigatePageUseCase>(value),
    );
  }
}

String _$navigatePageUseCaseHash() =>
    r'd8b080ebef22feaebef06bedb1cd4e5c497e6999';
