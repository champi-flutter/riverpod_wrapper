// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_index_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PageIndexViewModel)
const pageIndexViewModelProvider = PageIndexViewModelProvider._();

final class PageIndexViewModelProvider
    extends $NotifierProvider<PageIndexViewModel, int> {
  const PageIndexViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pageIndexViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pageIndexViewModelHash();

  @$internal
  @override
  PageIndexViewModel create() => PageIndexViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$pageIndexViewModelHash() =>
    r'fb24a8a381f3b36277463a9ed6a42ff1a3c8a7a6';

abstract class _$PageIndexViewModel extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
