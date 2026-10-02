// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_index_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PageIndexViewModel)
const pageIndexViewModelProvider = PageIndexViewModelFamily._();

final class PageIndexViewModelProvider
    extends $NotifierProvider<PageIndexViewModel, PageIndexState> {
  const PageIndexViewModelProvider._({
    required PageIndexViewModelFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'pageIndexViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pageIndexViewModelHash();

  @override
  String toString() {
    return r'pageIndexViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PageIndexViewModel create() => PageIndexViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PageIndexState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PageIndexState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PageIndexViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pageIndexViewModelHash() =>
    r'4bf1e189379df9a4837ea45f1be461f0e9c28223';

final class PageIndexViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          PageIndexViewModel,
          PageIndexState,
          PageIndexState,
          PageIndexState,
          Token
        > {
  const PageIndexViewModelFamily._()
    : super(
        retry: null,
        name: r'pageIndexViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PageIndexViewModelProvider call(Token token) =>
      PageIndexViewModelProvider._(argument: token, from: this);

  @override
  String toString() => r'pageIndexViewModelProvider';
}

abstract class _$PageIndexViewModel extends $Notifier<PageIndexState> {
  late final _$args = ref.$arg as Token;
  Token get token => _$args;

  PageIndexState build(Token token);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<PageIndexState, PageIndexState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PageIndexState, PageIndexState>,
              PageIndexState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
