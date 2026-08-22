
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

part 'menu_bar_providers.g.dart';

/// サイドバーVM
@riverpod
MenuBarViewModel menuBarViewModel(Ref ref) => MenuBarViewModel(
  notificationService: ref.watch(notificationServiceProvider),
  launchSupportLinkService: ref.watch(launchSupportLinkServiceProvider),
  loadingService: ref.watch(loadingServiceProvider),
);