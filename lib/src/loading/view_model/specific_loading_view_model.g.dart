// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_loading_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 固有のローディングを管理するクラス
///
/// 対象のローディングを反映させる Widget クラスで key（String）を指定して呼び出す。
/// ```
/// class SubmitButton extends ConsumerWidget {
///   const SubmitButton({super.key});
///
///   // 一意のキーを定義
///   static const loadingKey = 'submit_button_loading';
///
///   @override
///   Widget build(BuildContext context, WidgetRef ref) {
///     // 特定キーのローディング状態を監視
///     final isLoading = ref.watch(localLoadingViewModelProvider(loadingKey));
///
///     return ElevatedButton(...);
///   }
///   ...
/// }
/// ```

@ProviderFor(SpecificLoadingViewModel)
const specificLoadingViewModelProvider = SpecificLoadingViewModelFamily._();

/// 固有のローディングを管理するクラス
///
/// 対象のローディングを反映させる Widget クラスで key（String）を指定して呼び出す。
/// ```
/// class SubmitButton extends ConsumerWidget {
///   const SubmitButton({super.key});
///
///   // 一意のキーを定義
///   static const loadingKey = 'submit_button_loading';
///
///   @override
///   Widget build(BuildContext context, WidgetRef ref) {
///     // 特定キーのローディング状態を監視
///     final isLoading = ref.watch(localLoadingViewModelProvider(loadingKey));
///
///     return ElevatedButton(...);
///   }
///   ...
/// }
/// ```
final class SpecificLoadingViewModelProvider
    extends $NotifierProvider<SpecificLoadingViewModel, bool> {
  /// 固有のローディングを管理するクラス
  ///
  /// 対象のローディングを反映させる Widget クラスで key（String）を指定して呼び出す。
  /// ```
  /// class SubmitButton extends ConsumerWidget {
  ///   const SubmitButton({super.key});
  ///
  ///   // 一意のキーを定義
  ///   static const loadingKey = 'submit_button_loading';
  ///
  ///   @override
  ///   Widget build(BuildContext context, WidgetRef ref) {
  ///     // 特定キーのローディング状態を監視
  ///     final isLoading = ref.watch(localLoadingViewModelProvider(loadingKey));
  ///
  ///     return ElevatedButton(...);
  ///   }
  ///   ...
  /// }
  /// ```
  const SpecificLoadingViewModelProvider._({
    required SpecificLoadingViewModelFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'specificLoadingViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$specificLoadingViewModelHash();

  @override
  String toString() {
    return r'specificLoadingViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SpecificLoadingViewModel create() => SpecificLoadingViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpecificLoadingViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$specificLoadingViewModelHash() =>
    r'0a5b243f3bd0562da5c7ad69f9f1c41abf3ad4db';

/// 固有のローディングを管理するクラス
///
/// 対象のローディングを反映させる Widget クラスで key（String）を指定して呼び出す。
/// ```
/// class SubmitButton extends ConsumerWidget {
///   const SubmitButton({super.key});
///
///   // 一意のキーを定義
///   static const loadingKey = 'submit_button_loading';
///
///   @override
///   Widget build(BuildContext context, WidgetRef ref) {
///     // 特定キーのローディング状態を監視
///     final isLoading = ref.watch(localLoadingViewModelProvider(loadingKey));
///
///     return ElevatedButton(...);
///   }
///   ...
/// }
/// ```

final class SpecificLoadingViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          SpecificLoadingViewModel,
          bool,
          bool,
          bool,
          String
        > {
  const SpecificLoadingViewModelFamily._()
    : super(
        retry: null,
        name: r'specificLoadingViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 固有のローディングを管理するクラス
  ///
  /// 対象のローディングを反映させる Widget クラスで key（String）を指定して呼び出す。
  /// ```
  /// class SubmitButton extends ConsumerWidget {
  ///   const SubmitButton({super.key});
  ///
  ///   // 一意のキーを定義
  ///   static const loadingKey = 'submit_button_loading';
  ///
  ///   @override
  ///   Widget build(BuildContext context, WidgetRef ref) {
  ///     // 特定キーのローディング状態を監視
  ///     final isLoading = ref.watch(localLoadingViewModelProvider(loadingKey));
  ///
  ///     return ElevatedButton(...);
  ///   }
  ///   ...
  /// }
  /// ```

  SpecificLoadingViewModelProvider call(String key) =>
      SpecificLoadingViewModelProvider._(argument: key, from: this);

  @override
  String toString() => r'specificLoadingViewModelProvider';
}

/// 固有のローディングを管理するクラス
///
/// 対象のローディングを反映させる Widget クラスで key（String）を指定して呼び出す。
/// ```
/// class SubmitButton extends ConsumerWidget {
///   const SubmitButton({super.key});
///
///   // 一意のキーを定義
///   static const loadingKey = 'submit_button_loading';
///
///   @override
///   Widget build(BuildContext context, WidgetRef ref) {
///     // 特定キーのローディング状態を監視
///     final isLoading = ref.watch(localLoadingViewModelProvider(loadingKey));
///
///     return ElevatedButton(...);
///   }
///   ...
/// }
/// ```

abstract class _$SpecificLoadingViewModel extends $Notifier<bool> {
  late final _$args = ref.$arg as String;
  String get key => _$args;

  bool build(String key);
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
