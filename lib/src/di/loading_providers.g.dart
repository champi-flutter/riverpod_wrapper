// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ローディング処理フロー

@ProviderFor(loadingService)
const loadingServiceProvider = LoadingServiceProvider._();

/// ローディング処理フロー

final class LoadingServiceProvider
    extends $FunctionalProvider<LoadingService, LoadingService, LoadingService>
    with $Provider<LoadingService> {
  /// ローディング処理フロー
  const LoadingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingServiceHash();

  @$internal
  @override
  $ProviderElement<LoadingService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoadingService create(Ref ref) {
    return loadingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadingService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadingService>(value),
    );
  }
}

String _$loadingServiceHash() => r'3097a3af9114b20fc051976d98c4b0ee187300d5';

/// ローディングの表示への反映ポート

@ProviderFor(loadingPresenter)
const loadingPresenterProvider = LoadingPresenterProvider._();

/// ローディングの表示への反映ポート

final class LoadingPresenterProvider
    extends
        $FunctionalProvider<
          LoadingPresenter,
          LoadingPresenter,
          LoadingPresenter
        >
    with $Provider<LoadingPresenter> {
  /// ローディングの表示への反映ポート
  const LoadingPresenterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingPresenterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingPresenterHash();

  @$internal
  @override
  $ProviderElement<LoadingPresenter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoadingPresenter create(Ref ref) {
    return loadingPresenter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadingPresenter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadingPresenter>(value),
    );
  }
}

String _$loadingPresenterHash() => r'194fa617c5e90ac75584b0c7ec9a1177c0139f08';

/// エミュレータを再起動する必要があることを知らせる処理フロー

@ProviderFor(requiresRestartingEmulatorUseCase)
const requiresRestartingEmulatorUseCaseProvider =
    RequiresRestartingEmulatorUseCaseProvider._();

/// エミュレータを再起動する必要があることを知らせる処理フロー

final class RequiresRestartingEmulatorUseCaseProvider
    extends
        $FunctionalProvider<
          RequiresRestartingEmulatorUseCase,
          RequiresRestartingEmulatorUseCase,
          RequiresRestartingEmulatorUseCase
        >
    with $Provider<RequiresRestartingEmulatorUseCase> {
  /// エミュレータを再起動する必要があることを知らせる処理フロー
  const RequiresRestartingEmulatorUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'requiresRestartingEmulatorUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$requiresRestartingEmulatorUseCaseHash();

  @$internal
  @override
  $ProviderElement<RequiresRestartingEmulatorUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RequiresRestartingEmulatorUseCase create(Ref ref) {
    return requiresRestartingEmulatorUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RequiresRestartingEmulatorUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RequiresRestartingEmulatorUseCase>(
        value,
      ),
    );
  }
}

String _$requiresRestartingEmulatorUseCaseHash() =>
    r'090e6ddd308b0f5233145ecccf228652efe867f8';
