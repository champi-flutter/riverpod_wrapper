// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_saved_scope_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(editController)
const editControllerProvider = EditControllerFamily._();

final class EditControllerProvider
    extends $FunctionalProvider<EditController, EditController, EditController>
    with $Provider<EditController> {
  const EditControllerProvider._({
    required EditControllerFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'editControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editControllerHash();

  @override
  String toString() {
    return r'editControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<EditController> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EditController create(Ref ref) {
    final argument = this.argument as Token;
    return editController(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditController>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editControllerHash() => r'1277d805159dc8c56598b04d3d0bc801c3ed8775';

final class EditControllerFamily extends $Family
    with $FunctionalFamilyOverride<EditController, Token> {
  const EditControllerFamily._()
    : super(
        retry: null,
        name: r'editControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditControllerProvider call(Token token) =>
      EditControllerProvider._(argument: token, from: this);

  @override
  String toString() => r'editControllerProvider';
}

@ProviderFor(editPresenter)
const editPresenterProvider = EditPresenterFamily._();

final class EditPresenterProvider
    extends $FunctionalProvider<EditPresenter, EditPresenter, EditPresenter>
    with $Provider<EditPresenter> {
  const EditPresenterProvider._({
    required EditPresenterFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'editPresenterProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editPresenterHash();

  @override
  String toString() {
    return r'editPresenterProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<EditPresenter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EditPresenter create(Ref ref) {
    final argument = this.argument as Token;
    return editPresenter(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditPresenter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditPresenter>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EditPresenterProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editPresenterHash() => r'701a31b3a817b5ae881f7102955cfbbdd3cb9153';

final class EditPresenterFamily extends $Family
    with $FunctionalFamilyOverride<EditPresenter, Token> {
  const EditPresenterFamily._()
    : super(
        retry: null,
        name: r'editPresenterProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditPresenterProvider call(Token token) =>
      EditPresenterProvider._(argument: token, from: this);

  @override
  String toString() => r'editPresenterProvider';
}

@ProviderFor(updateEditStateUseCase)
const updateEditStateUseCaseProvider = UpdateEditStateUseCaseFamily._();

final class UpdateEditStateUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateEditStateUseCase,
          UpdateEditStateUseCase,
          UpdateEditStateUseCase
        >
    with $Provider<UpdateEditStateUseCase> {
  const UpdateEditStateUseCaseProvider._({
    required UpdateEditStateUseCaseFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'updateEditStateUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$updateEditStateUseCaseHash();

  @override
  String toString() {
    return r'updateEditStateUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<UpdateEditStateUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateEditStateUseCase create(Ref ref) {
    final argument = this.argument as Token;
    return updateEditStateUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateEditStateUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateEditStateUseCase>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateEditStateUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$updateEditStateUseCaseHash() =>
    r'88b578a7a001b0566ed1014f367f87435c631ee2';

final class UpdateEditStateUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<UpdateEditStateUseCase, Token> {
  const UpdateEditStateUseCaseFamily._()
    : super(
        retry: null,
        name: r'updateEditStateUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UpdateEditStateUseCaseProvider call(Token token) =>
      UpdateEditStateUseCaseProvider._(argument: token, from: this);

  @override
  String toString() => r'updateEditStateUseCaseProvider';
}
