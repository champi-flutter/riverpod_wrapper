// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 通知送信クラス
///

@ProviderFor(notificationService)
const notificationServiceProvider = NotificationServiceProvider._();

/// 通知送信クラス
///

final class NotificationServiceProvider
    extends
        $FunctionalProvider<
          NotificationService,
          NotificationService,
          NotificationService
        >
    with $Provider<NotificationService> {
  /// 通知送信クラス
  ///
  const NotificationServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationServiceHash();

  @$internal
  @override
  $ProviderElement<NotificationService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationService create(Ref ref) {
    return notificationService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationService>(value),
    );
  }
}

String _$notificationServiceHash() =>
    r'392328f0334b398758035edc21e4d7585bb39a07';

/// 通知のストリームを管理するクラス

@ProviderFor(notificationStreamHandler)
const notificationStreamHandlerProvider = NotificationStreamHandlerProvider._();

/// 通知のストリームを管理するクラス

final class NotificationStreamHandlerProvider
    extends
        $FunctionalProvider<
          NotificationStreamHandler,
          NotificationStreamHandler,
          NotificationStreamHandler
        >
    with $Provider<NotificationStreamHandler> {
  /// 通知のストリームを管理するクラス
  const NotificationStreamHandlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationStreamHandlerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationStreamHandlerHash();

  @$internal
  @override
  $ProviderElement<NotificationStreamHandler> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationStreamHandler create(Ref ref) {
    return notificationStreamHandler(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationStreamHandler value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationStreamHandler>(value),
    );
  }
}

String _$notificationStreamHandlerHash() =>
    r'5c00cadb65341034c9bd85277f8dee1db6327afa';

/// 通知キャッシュハンドラ

@ProviderFor(notificationCacheHandler)
const notificationCacheHandlerProvider = NotificationCacheHandlerProvider._();

/// 通知キャッシュハンドラ

final class NotificationCacheHandlerProvider
    extends
        $FunctionalProvider<
          NotificationCacheHandler,
          NotificationCacheHandler,
          NotificationCacheHandler
        >
    with $Provider<NotificationCacheHandler> {
  /// 通知キャッシュハンドラ
  const NotificationCacheHandlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationCacheHandlerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationCacheHandlerHash();

  @$internal
  @override
  $ProviderElement<NotificationCacheHandler> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationCacheHandler create(Ref ref) {
    return notificationCacheHandler(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationCacheHandler value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationCacheHandler>(value),
    );
  }
}

String _$notificationCacheHandlerHash() =>
    r'9b93c271ff535148ae469e3ba4d98535235e292c';

/// 通知反映クラス

@ProviderFor(notificationPresenter)
const notificationPresenterProvider = NotificationPresenterProvider._();

/// 通知反映クラス

final class NotificationPresenterProvider
    extends
        $FunctionalProvider<
          NotificationPresenter,
          NotificationPresenter,
          NotificationPresenter
        >
    with $Provider<NotificationPresenter> {
  /// 通知反映クラス
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
    r'bc75bf335e6ab24b0558fdd1cec0d85171a01615';

/// 通知完了報告フロー

@ProviderFor(notifyCompletedUseCase)
const notifyCompletedUseCaseProvider = NotifyCompletedUseCaseProvider._();

/// 通知完了報告フロー

final class NotifyCompletedUseCaseProvider
    extends
        $FunctionalProvider<
          NotifyCompletedUseCase,
          NotifyCompletedUseCase,
          NotifyCompletedUseCase
        >
    with $Provider<NotifyCompletedUseCase> {
  /// 通知完了報告フロー
  const NotifyCompletedUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notifyCompletedUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notifyCompletedUseCaseHash();

  @$internal
  @override
  $ProviderElement<NotifyCompletedUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotifyCompletedUseCase create(Ref ref) {
    return notifyCompletedUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotifyCompletedUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotifyCompletedUseCase>(value),
    );
  }
}

String _$notifyCompletedUseCaseHash() =>
    r'1b12c6f0779147cbbf00a0ac4cc6da4e2a94e154';

/// 通知完了報告クラス

@ProviderFor(notificationController)
const notificationControllerProvider = NotificationControllerProvider._();

/// 通知完了報告クラス

final class NotificationControllerProvider
    extends
        $FunctionalProvider<
          NotificationController,
          NotificationController,
          NotificationController
        >
    with $Provider<NotificationController> {
  /// 通知完了報告クラス
  const NotificationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationControllerHash();

  @$internal
  @override
  $ProviderElement<NotificationController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationController create(Ref ref) {
    return notificationController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationController>(value),
    );
  }
}

String _$notificationControllerHash() =>
    r'c07b513db120a63877ed76023739e08234790a01';

/// 通知購読開始フロー

@ProviderFor(startListeningNotificationUseCase)
const startListeningNotificationUseCaseProvider =
    StartListeningNotificationUseCaseProvider._();

/// 通知購読開始フロー

final class StartListeningNotificationUseCaseProvider
    extends
        $FunctionalProvider<
          StartListeningNotificationUseCase,
          StartListeningNotificationUseCase,
          StartListeningNotificationUseCase
        >
    with $Provider<StartListeningNotificationUseCase> {
  /// 通知購読開始フロー
  const StartListeningNotificationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'startListeningNotificationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$startListeningNotificationUseCaseHash();

  @$internal
  @override
  $ProviderElement<StartListeningNotificationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  StartListeningNotificationUseCase create(Ref ref) {
    return startListeningNotificationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StartListeningNotificationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StartListeningNotificationUseCase>(
        value,
      ),
    );
  }
}

String _$startListeningNotificationUseCaseHash() =>
    r'0af06a49ca7338f0d23f9597a985734d32b49bc4';
