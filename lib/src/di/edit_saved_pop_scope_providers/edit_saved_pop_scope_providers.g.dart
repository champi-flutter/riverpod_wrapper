// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_saved_pop_scope_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(editController)
const editControllerProvider = EditControllerProvider._();

final class EditControllerProvider
    extends $FunctionalProvider<EditController, EditController, EditController>
    with $Provider<EditController> {
  const EditControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editControllerHash();

  @$internal
  @override
  $ProviderElement<EditController> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EditController create(Ref ref) {
    return editController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditController>(value),
    );
  }
}

String _$editControllerHash() => r'62f73667b45b3ed4023559fad3eb118a1c7cbccb';

@ProviderFor(editPresenter)
const editPresenterProvider = EditPresenterProvider._();

final class EditPresenterProvider
    extends $FunctionalProvider<EditPresenter, EditPresenter, EditPresenter>
    with $Provider<EditPresenter> {
  const EditPresenterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editPresenterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editPresenterHash();

  @$internal
  @override
  $ProviderElement<EditPresenter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EditPresenter create(Ref ref) {
    return editPresenter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditPresenter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditPresenter>(value),
    );
  }
}

String _$editPresenterHash() => r'92b0ec4d8e404c6ebd98fc35f3ed3e5b326a2f41';

@ProviderFor(updateEditStateUseCase)
const updateEditStateUseCaseProvider = UpdateEditStateUseCaseProvider._();

final class UpdateEditStateUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateEditStateUseCase,
          UpdateEditStateUseCase,
          UpdateEditStateUseCase
        >
    with $Provider<UpdateEditStateUseCase> {
  const UpdateEditStateUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateEditStateUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateEditStateUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateEditStateUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateEditStateUseCase create(Ref ref) {
    return updateEditStateUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateEditStateUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateEditStateUseCase>(value),
    );
  }
}

String _$updateEditStateUseCaseHash() =>
    r'f37ff7b3808bfa1611eb40e7a6b58271aed9c7da';
