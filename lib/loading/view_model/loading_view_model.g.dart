// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 2026/04/03 追加: ローディングを管理するクラス

@ProviderFor(LoadingViewModel)
const loadingViewModelProvider = LoadingViewModelProvider._();

/// 2026/04/03 追加: ローディングを管理するクラス
final class LoadingViewModelProvider
    extends $NotifierProvider<LoadingViewModel, LoadingState> {
  /// 2026/04/03 追加: ローディングを管理するクラス
  const LoadingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingViewModelHash();

  @$internal
  @override
  LoadingViewModel create() => LoadingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadingState>(value),
    );
  }
}

String _$loadingViewModelHash() => r'9c834b65932b173b932e7730482f6f62e8554c95';

/// 2026/04/03 追加: ローディングを管理するクラス

abstract class _$LoadingViewModel extends $Notifier<LoadingState> {
  LoadingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoadingState, LoadingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoadingState, LoadingState>,
              LoadingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
