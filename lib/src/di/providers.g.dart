// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 通知送信クラス
///
/// 生成される Provider のインスタンスの名前は、"Notifier" が削られて、`eventProvider`
/// になる。

@ProviderFor(eventNotifier)
const eventProvider = EventNotifierProvider._();

/// 通知送信クラス
///
/// 生成される Provider のインスタンスの名前は、"Notifier" が削られて、`eventProvider`
/// になる。

final class EventNotifierProvider
    extends $FunctionalProvider<EventNotifier, EventNotifier, EventNotifier>
    with $Provider<EventNotifier> {
  /// 通知送信クラス
  ///
  /// 生成される Provider のインスタンスの名前は、"Notifier" が削られて、`eventProvider`
  /// になる。
  const EventNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'eventProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$eventNotifierHash();

  @$internal
  @override
  $ProviderElement<EventNotifier> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EventNotifier create(Ref ref) {
    return eventNotifier(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EventNotifier value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EventNotifier>(value),
    );
  }
}

String _$eventNotifierHash() => r'19f967e82330db9703124bca54666d82bea8a963';

/// 外部通信サービスクラス

@ProviderFor(launchSupportLinkService)
const launchSupportLinkServiceProvider = LaunchSupportLinkServiceProvider._();

/// 外部通信サービスクラス

final class LaunchSupportLinkServiceProvider
    extends
        $FunctionalProvider<
          LaunchSupportLinkService,
          LaunchSupportLinkService,
          LaunchSupportLinkService
        >
    with $Provider<LaunchSupportLinkService> {
  /// 外部通信サービスクラス
  const LaunchSupportLinkServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'launchSupportLinkServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$launchSupportLinkServiceHash();

  @$internal
  @override
  $ProviderElement<LaunchSupportLinkService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LaunchSupportLinkService create(Ref ref) {
    return launchSupportLinkService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LaunchSupportLinkService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LaunchSupportLinkService>(value),
    );
  }
}

String _$launchSupportLinkServiceHash() =>
    r'96b194e8e27269b3a935a99e22f202cdb90bed0f';

@ProviderFor(clipboardService)
const clipboardServiceProvider = ClipboardServiceProvider._();

final class ClipboardServiceProvider
    extends
        $FunctionalProvider<
          ClipboardService,
          ClipboardService,
          ClipboardService
        >
    with $Provider<ClipboardService> {
  const ClipboardServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clipboardServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clipboardServiceHash();

  @$internal
  @override
  $ProviderElement<ClipboardService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClipboardService create(Ref ref) {
    return clipboardService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClipboardService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClipboardService>(value),
    );
  }
}

String _$clipboardServiceHash() => r'855a149a737ac513ce77d57579f76f99891b4dfa';

/// 外部通信リポジトリ

@ProviderFor(externalLaunchRepository)
const externalLaunchRepositoryProvider = ExternalLaunchRepositoryProvider._();

/// 外部通信リポジトリ

final class ExternalLaunchRepositoryProvider
    extends
        $FunctionalProvider<
          ExternalLaunchRepository,
          ExternalLaunchRepository,
          ExternalLaunchRepository
        >
    with $Provider<ExternalLaunchRepository> {
  /// 外部通信リポジトリ
  const ExternalLaunchRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'externalLaunchRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$externalLaunchRepositoryHash();

  @$internal
  @override
  $ProviderElement<ExternalLaunchRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ExternalLaunchRepository create(Ref ref) {
    return externalLaunchRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExternalLaunchRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExternalLaunchRepository>(value),
    );
  }
}

String _$externalLaunchRepositoryHash() =>
    r'162c928793ef884a21a89ce7fd5392028d06f5ee';

/// 通知管理クラス

@ProviderFor(notificationViewModel)
const notificationViewModelProvider = NotificationViewModelProvider._();

/// 通知管理クラス

final class NotificationViewModelProvider
    extends
        $FunctionalProvider<
          NotificationViewModel,
          NotificationViewModel,
          NotificationViewModel
        >
    with $Provider<NotificationViewModel> {
  /// 通知管理クラス
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
  $ProviderElement<NotificationViewModel> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationViewModel create(Ref ref) {
    return notificationViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationViewModel>(value),
    );
  }
}

String _$notificationViewModelHash() =>
    r'bb0fd242ae8e01805655136e3fe092076636861f';

/// サイドバーVM

@ProviderFor(menuBarViewModel)
const menuBarViewModelProvider = MenuBarViewModelProvider._();

/// サイドバーVM

final class MenuBarViewModelProvider
    extends
        $FunctionalProvider<
          MenuBarViewModel,
          MenuBarViewModel,
          MenuBarViewModel
        >
    with $Provider<MenuBarViewModel> {
  /// サイドバーVM
  const MenuBarViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'menuBarViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$menuBarViewModelHash();

  @$internal
  @override
  $ProviderElement<MenuBarViewModel> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MenuBarViewModel create(Ref ref) {
    return menuBarViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MenuBarViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MenuBarViewModel>(value),
    );
  }
}

String _$menuBarViewModelHash() => r'0ec7ae395f9aee371f1f6867304f26609054dc08';

@ProviderFor(clipboardViewModel)
const clipboardViewModelProvider = ClipboardViewModelProvider._();

final class ClipboardViewModelProvider
    extends
        $FunctionalProvider<
          ClipboardViewModel,
          ClipboardViewModel,
          ClipboardViewModel
        >
    with $Provider<ClipboardViewModel> {
  const ClipboardViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clipboardViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clipboardViewModelHash();

  @$internal
  @override
  $ProviderElement<ClipboardViewModel> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClipboardViewModel create(Ref ref) {
    return clipboardViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClipboardViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClipboardViewModel>(value),
    );
  }
}

String _$clipboardViewModelHash() =>
    r'aa360d3ced5105262e2effd41aa045083c928782';
