// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditViewModel)
const editViewModelProvider = EditViewModelProvider._();

final class EditViewModelProvider
    extends $NotifierProvider<EditViewModel, bool> {
  const EditViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editViewModelHash();

  @$internal
  @override
  EditViewModel create() => EditViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$editViewModelHash() => r'3dc9ec81ee013aa51c7b34c96d63a1644d970d45';

abstract class _$EditViewModel extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
