// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 通知送信クラス
///

@ProviderFor(notificationUseCase)
const notificationUseCaseProvider = NotificationUseCaseProvider._();

/// 通知送信クラス
///

final class NotificationUseCaseProvider
    extends
        $FunctionalProvider<
          NotificationUseCase,
          NotificationUseCase,
          NotificationUseCase
        >
    with $Provider<NotificationUseCase> {
  /// 通知送信クラス
  ///
  const NotificationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationUseCaseHash();

  @$internal
  @override
  $ProviderElement<NotificationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationUseCase create(Ref ref) {
    return notificationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationUseCase>(value),
    );
  }
}

String _$notificationUseCaseHash() =>
    r'9d44df07d44d3fcdf67c10a6f3c9af5dc93d0af3';

/// ローディング

@ProviderFor(loadingUseCase)
const loadingUseCaseProvider = LoadingUseCaseProvider._();

/// ローディング

final class LoadingUseCaseProvider
    extends $FunctionalProvider<LoadingUseCase, LoadingUseCase, LoadingUseCase>
    with $Provider<LoadingUseCase> {
  /// ローディング
  const LoadingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingUseCaseHash();

  @$internal
  @override
  $ProviderElement<LoadingUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoadingUseCase create(Ref ref) {
    return loadingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadingUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadingUseCase>(value),
    );
  }
}

String _$loadingUseCaseHash() => r'99a2afb9cbad1341c90b5750bbc2b85e52a71170';

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

@ProviderFor(clipboardUseCase)
const clipboardUseCaseProvider = ClipboardUseCaseProvider._();

final class ClipboardUseCaseProvider
    extends
        $FunctionalProvider<
          ClipboardUseCase,
          ClipboardUseCase,
          ClipboardUseCase
        >
    with $Provider<ClipboardUseCase> {
  const ClipboardUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clipboardUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clipboardUseCaseHash();

  @$internal
  @override
  $ProviderElement<ClipboardUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClipboardUseCase create(Ref ref) {
    return clipboardUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClipboardUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClipboardUseCase>(value),
    );
  }
}

String _$clipboardUseCaseHash() => r'4356f895d2f9704ea3d3533b07e72f50f1579c4f';

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

/// プラットフォームの機能へのインターフェース

@ProviderFor(platformFeaturesDriver)
const platformFeaturesDriverProvider = PlatformFeaturesDriverProvider._();

/// プラットフォームの機能へのインターフェース

final class PlatformFeaturesDriverProvider
    extends
        $FunctionalProvider<
          PlatformFeaturesDriver,
          PlatformFeaturesDriver,
          PlatformFeaturesDriver
        >
    with $Provider<PlatformFeaturesDriver> {
  /// プラットフォームの機能へのインターフェース
  const PlatformFeaturesDriverProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'platformFeaturesDriverProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$platformFeaturesDriverHash();

  @$internal
  @override
  $ProviderElement<PlatformFeaturesDriver> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PlatformFeaturesDriver create(Ref ref) {
    return platformFeaturesDriver(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlatformFeaturesDriver value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlatformFeaturesDriver>(value),
    );
  }
}

String _$platformFeaturesDriverHash() =>
    r'0ec26b89915a0a16e2f3eb03d7133e4d234e7f9b';

/// 通知管理クラス

@ProviderFor(notificationPresenter)
const notificationPresenterProvider = NotificationPresenterProvider._();

/// 通知管理クラス

final class NotificationPresenterProvider
    extends
        $FunctionalProvider<
          NotificationPresenter,
          NotificationPresenter,
          NotificationPresenter
        >
    with $Provider<NotificationPresenter> {
  /// 通知管理クラス
  const NotificationPresenterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationPresenterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationPresenterHash();

  @$internal
  @override
  $ProviderElement<NotificationPresenter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationPresenter create(Ref ref) {
    return notificationPresenter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationPresenter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationPresenter>(value),
    );
  }
}

String _$notificationPresenterHash() =>
    r'3405f28f5516587251a59205c4be577ae996b5fc';

@ProviderFor(loadingPresenter)
const loadingPresenterProvider = LoadingPresenterProvider._();

final class LoadingPresenterProvider
    extends
        $FunctionalProvider<
          LoadingPresenter,
          LoadingPresenter,
          LoadingPresenter
        >
    with $Provider<LoadingPresenter> {
  const LoadingPresenterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loadingPresenterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loadingPresenterHash();

  @$internal
  @override
  $ProviderElement<LoadingPresenter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoadingPresenter create(Ref ref) {
    return loadingPresenter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoadingPresenter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoadingPresenter>(value),
    );
  }
}

String _$loadingPresenterHash() => r'881529afa682df9ebd13783af45be70e96dca94d';

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
