// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_loading_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 2026/04/03 追加: ローディング状態を管理するクラス

@ProviderFor(GeneralLoadingViewModel)
const generalLoadingViewModelProvider = GeneralLoadingViewModelProvider._();

/// 2026/04/03 追加: ローディング状態を管理するクラス
final class GeneralLoadingViewModelProvider
    extends $NotifierProvider<GeneralLoadingViewModel, GeneralLoadingState> {
  /// 2026/04/03 追加: ローディング状態を管理するクラス
  const GeneralLoadingViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generalLoadingViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generalLoadingViewModelHash();

  @$internal
  @override
  GeneralLoadingViewModel create() => GeneralLoadingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeneralLoadingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeneralLoadingState>(value),
    );
  }
}

String _$generalLoadingViewModelHash() =>
    r'aee05662ae4f6cd9817b3828183bd5feab063852';

/// 2026/04/03 追加: ローディング状態を管理するクラス

abstract class _$GeneralLoadingViewModel
    extends $Notifier<GeneralLoadingState> {
  GeneralLoadingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<GeneralLoadingState, GeneralLoadingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GeneralLoadingState, GeneralLoadingState>,
              GeneralLoadingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
