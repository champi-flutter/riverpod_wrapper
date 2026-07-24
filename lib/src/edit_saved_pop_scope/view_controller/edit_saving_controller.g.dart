// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_saving_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditSavingController)
const editSavingControllerProvider = EditSavingControllerProvider._();

final class EditSavingControllerProvider
    extends $NotifierProvider<EditSavingController, bool> {
  const EditSavingControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editSavingControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editSavingControllerHash();

  @$internal
  @override
  EditSavingController create() => EditSavingController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$editSavingControllerHash() =>
    r'02691ab856c52575326ec6f91cac2027e7538dc2';

abstract class _$EditSavingController extends $Notifier<bool> {
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
