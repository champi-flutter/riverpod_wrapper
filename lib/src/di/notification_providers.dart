
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/interactor/notification_service_impl.dart';

part 'notification_providers.g.dart';

/// 通知送信クラス
///
@riverpod
NotificationService notificationService(Ref ref) => NotificationServiceImpl();

/// 通知管理クラス
@riverpod
NotificationPresenter notificationPresenter(Ref ref) => NotificationPresenter(
  notificationService: ref.watch(notificationServiceProvider),
);