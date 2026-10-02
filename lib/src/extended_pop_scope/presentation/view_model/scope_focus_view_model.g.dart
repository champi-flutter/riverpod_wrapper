// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scope_focus_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ScopeFocusViewModel)
const scopeFocusViewModelProvider = ScopeFocusViewModelFamily._();

final class ScopeFocusViewModelProvider
    extends $NotifierProvider<ScopeFocusViewModel, ScopeStatus> {
  const ScopeFocusViewModelProvider._({
    required ScopeFocusViewModelFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'scopeFocusViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$scopeFocusViewModelHash();

  @override
  String toString() {
    return r'scopeFocusViewModelProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is ScopeFocusViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$scopeFocusViewModelHash() =>
    r'92133cfb8c9ecef63c46cb6bcf374fee38f2907e';

final class ScopeFocusViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          ScopeFocusViewModel,
          ScopeStatus,
          ScopeStatus,
          ScopeStatus,
          Token
        > {
  const ScopeFocusViewModelFamily._()
    : super(
        retry: null,
        name: r'scopeFocusViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ScopeFocusViewModelProvider call(Token token) =>
      ScopeFocusViewModelProvider._(argument: token, from: this);

  @override
  String toString() => r'scopeFocusViewModelProvider';
}

abstract class _$ScopeFocusViewModel extends $Notifier<ScopeStatus> {
  late final _$args = ref.$arg as Token;
  Token get token => _$args;

  ScopeStatus build(Token token);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
