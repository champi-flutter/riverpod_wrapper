// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditViewModel)
const editViewModelProvider = EditViewModelFamily._();

final class EditViewModelProvider
    extends $NotifierProvider<EditViewModel, bool> {
  const EditViewModelProvider._({
    required EditViewModelFamily super.from,
    required Token super.argument,
  }) : super(
         retry: null,
         name: r'editViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$editViewModelHash();

  @override
  String toString() {
    return r'editViewModelProvider'
        ''
        '($argument)';
  }

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

  @override
  bool operator ==(Object other) {
    return other is EditViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$editViewModelHash() => r'65378545b2d5b33e5d279ebf0ad6d6ed1acc0f53';

final class EditViewModelFamily extends $Family
    with $ClassFamilyOverride<EditViewModel, bool, bool, bool, Token> {
  const EditViewModelFamily._()
    : super(
        retry: null,
        name: r'editViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EditViewModelProvider call(Token token) =>
      EditViewModelProvider._(argument: token, from: this);

  @override
  String toString() => r'editViewModelProvider';
}

abstract class _$EditViewModel extends $Notifier<bool> {
  late final _$args = ref.$arg as Token;
  Token get token => _$args;

  bool build(Token token);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
