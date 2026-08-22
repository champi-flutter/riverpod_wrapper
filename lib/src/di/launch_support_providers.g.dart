// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_support_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 外部通信サービスクラス

@ProviderFor(launchSupportLinkService)
const launchSupportLinkServiceProvider = LaunchSupportLinkServiceProvider._();

/// 外部通信サービスクラス

final class LaunchSupportLinkServiceProvider
    extends
        $FunctionalProvider<
          LaunchSupportLinkService,
          LaunchSupportLinkService,
          LaunchSupportLinkService
        >
    with $Provider<LaunchSupportLinkService> {
  /// 外部通信サービスクラス
  const LaunchSupportLinkServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'launchSupportLinkServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$launchSupportLinkServiceHash();

  @$internal
  @override
  $ProviderElement<LaunchSupportLinkService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LaunchSupportLinkService create(Ref ref) {
    return launchSupportLinkService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LaunchSupportLinkService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LaunchSupportLinkService>(value),
    );
  }
}

String _$launchSupportLinkServiceHash() =>
    r'9c12a20d940266ca1ae50d21e69d16adbc3c6b2b';

/// 外部通信リポジトリ

@ProviderFor(externalLaunchRepository)
const externalLaunchRepositoryProvider = ExternalLaunchRepositoryProvider._();

/// 外部通信リポジトリ

final class ExternalLaunchRepositoryProvider
    extends
        $FunctionalProvider<
          ExternalLaunchRepository,
          ExternalLaunchRepository,
          ExternalLaunchRepository
        >
    with $Provider<ExternalLaunchRepository> {
  /// 外部通信リポジトリ
  const ExternalLaunchRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'externalLaunchRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$externalLaunchRepositoryHash();

  @$internal
  @override
  $ProviderElement<ExternalLaunchRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ExternalLaunchRepository create(Ref ref) {
    return externalLaunchRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExternalLaunchRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExternalLaunchRepository>(value),
    );
  }
}

String _$externalLaunchRepositoryHash() =>
    r'15c3ae7ed2c1704349e14cd641378670aea0c133';
