// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scope_focus_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ScopeFocusViewModel)
const scopeFocusViewModelProvider = ScopeFocusViewModelProvider._();

final class ScopeFocusViewModelProvider
    extends $NotifierProvider<ScopeFocusViewModel, ScopeStatus> {
  const ScopeFocusViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scopeFocusViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scopeFocusViewModelHash();

  @$internal
  @override
  ScopeFocusViewModel create() => ScopeFocusViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ScopeStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ScopeStatus>(value),
    );
  }
}

String _$scopeFocusViewModelHash() =>
    r'adcf927cd6bca4ea318098612e944e49b0b64267';

abstract class _$ScopeFocusViewModel extends $Notifier<ScopeStatus> {
  ScopeStatus build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ScopeStatus, ScopeStatus>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ScopeStatus, ScopeStatus>,
              ScopeStatus,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
