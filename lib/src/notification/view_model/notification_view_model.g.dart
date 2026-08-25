// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationViewModel)
const notificationViewModelProvider = NotificationViewModelProvider._();

final class NotificationViewModelProvider
    extends $NotifierProvider<NotificationViewModel, Notified?> {
  const NotificationViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationViewModelHash();

  @$internal
  @override
  NotificationViewModel create() => NotificationViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Notified? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Notified?>(value),
    );
  }
}

String _$notificationViewModelHash() =>
    r'e1eb73911c5e5e81da9328252ad565fe38684a8e';

abstract class _$NotificationViewModel extends $Notifier<Notified?> {
  Notified? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Notified?, Notified?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Notified?, Notified?>,
              Notified?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
