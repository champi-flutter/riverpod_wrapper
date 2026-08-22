// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clipboard_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(clipboardService)
const clipboardServiceProvider = ClipboardServiceProvider._();

final class ClipboardServiceProvider
    extends
        $FunctionalProvider<
          ClipboardService,
          ClipboardService,
          ClipboardService
        >
    with $Provider<ClipboardService> {
  const ClipboardServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clipboardServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clipboardServiceHash();

  @$internal
  @override
  $ProviderElement<ClipboardService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClipboardService create(Ref ref) {
    return clipboardService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClipboardService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClipboardService>(value),
    );
  }
}

String _$clipboardServiceHash() => r'598fe0ca0573cbc0074b2ecb23eb01f06769fc6e';

@ProviderFor(clipboardViewModel)
const clipboardViewModelProvider = ClipboardViewModelProvider._();

final class ClipboardViewModelProvider
    extends
        $FunctionalProvider<
          ClipboardViewModel,
          ClipboardViewModel,
          ClipboardViewModel
        >
    with $Provider<ClipboardViewModel> {
  const ClipboardViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clipboardViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clipboardViewModelHash();

  @$internal
  @override
  $ProviderElement<ClipboardViewModel> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClipboardViewModel create(Ref ref) {
    return clipboardViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClipboardViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClipboardViewModel>(value),
    );
  }
}

String _$clipboardViewModelHash() =>
    r'3377d4dda638aa4ca3f7d4ac4c6957dd4274caab';
