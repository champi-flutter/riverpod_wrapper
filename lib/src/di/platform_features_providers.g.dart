// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_features_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// プラットフォームの機能へのインターフェース

@ProviderFor(platformFeaturesDriver)
const platformFeaturesDriverProvider = PlatformFeaturesDriverProvider._();

/// プラットフォームの機能へのインターフェース

final class PlatformFeaturesDriverProvider
    extends
        $FunctionalProvider<
          PlatformFeaturesDriver,
          PlatformFeaturesDriver,
          PlatformFeaturesDriver
        >
    with $Provider<PlatformFeaturesDriver> {
  /// プラットフォームの機能へのインターフェース
  const PlatformFeaturesDriverProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'platformFeaturesDriverProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$platformFeaturesDriverHash();

  @$internal
  @override
  $ProviderElement<PlatformFeaturesDriver> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PlatformFeaturesDriver create(Ref ref) {
    return platformFeaturesDriver(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlatformFeaturesDriver value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlatformFeaturesDriver>(value),
    );
  }
}

String _$platformFeaturesDriverHash() =>
    r'0ec26b89915a0a16e2f3eb03d7133e4d234e7f9b';
