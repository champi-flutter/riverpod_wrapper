import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/cache_handler/notification_cache_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/cache_handler/notification_cache_handler_impl.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/stream_handler/notification_stream_handler.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/stream_handler/notification_stream_handler_impl.dart';
import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/notify_completed_use_case.dart';
import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/start_listening_notification_use_case.dart';
import 'package:riverpod_wrapper/src/notification/use_case/interactor/notification_service_impl.dart';
import 'package:riverpod_wrapper/src/notification/use_case/interactor/notify_completed_interactor.dart';
import 'package:riverpod_wrapper/src/notification/use_case/interactor/start_listening_notification_interactor.dart';
import 'package:riverpod_wrapper/src/notification/use_case/output_boundary/notification_presenter.dart';
import 'package:riverpod_wrapper/src/notification/view_model/notification_controller.dart';
import 'package:riverpod_wrapper/src/notification/view_model/notification_presenter_impl.dart';
import 'package:riverpod_wrapper/src/notification/view_model/notification_view_model.dart';

part 'notification_providers.g.dart';

/// 通知送信クラス
///
@riverpod
NotificationService notificationService(Ref ref) => NotificationServiceImpl(
  notificationCacheHandler: ref.watch(notificationCacheHandlerProvider),
);

/// 通知のストリームを管理するクラス
@riverpod
NotificationStreamHandler notificationStreamHandler(Ref ref) =>
    NotificationStreamHandlerImpl();

/// 通知キャッシュハンドラ
@riverpod
NotificationCacheHandler notificationCacheHandler(Ref ref) =>
    NotificationCacheHandlerImpl(
      notificationStreamHandler: ref.watch(notificationStreamHandlerProvider),
      notificationCacheKeyHolder: ref.watch(
        _notificationCacheKeyHolderProvider,
      ),
      notificationService: ref.watch(notificationServiceProvider),
    );

/// 通知反映クラス
@riverpod
NotificationPresenter notificationPresenter(Ref ref) =>
    NotificationPresenterImpl(
      notificationViewModel: ref.watch(notificationViewModelProvider.notifier),
    );

// todo 通知完了報告フロー
/// 通知完了報告フロー
@riverpod
NotifyCompletedUseCase notifyCompletedUseCase(Ref ref) =>
    NotifyCompletedInteractor(
      notificationCacheHandler: ref.watch(notificationCacheHandlerProvider),
    );

/// 通知完了報告クラス
@riverpod
NotificationController notificationController(Ref ref) =>
    NotificationController(
      notifyCompletedUseCase: ref.watch(notifyCompletedUseCaseProvider),
      notificationViewModel: ref.watch(notificationViewModelProvider.notifier),
    );

// todo 通知購読開始フロー
/// 通知購読開始フロー
@riverpod
StartListeningNotificationUseCase startListeningNotificationUseCase(Ref ref) =>
    StartListeningNotificationInteractor(
      notificationStreamHandler: ref.watch(notificationStreamHandlerProvider),
      notificationPresenter: ref.watch(notificationPresenterProvider),
    );

/// 通知キャッシュ管理ツール
final _notificationCacheKeyHolderProvider = autoIntegerKeyHolder();
