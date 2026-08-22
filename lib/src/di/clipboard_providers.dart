import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

part 'clipboard_providers.g.dart';

@riverpod
ClipboardService clipboardService(Ref ref) => ClipboardService(
  notificationService: ref.watch(notificationServiceProvider),
  platformFeaturesDriver: ref.watch(platformFeaturesDriverProvider),
);

@riverpod
ClipboardViewModel clipboardViewModel(Ref ref) => ClipboardViewModel(
  notificationService: ref.watch(notificationServiceProvider),
  loadingService: ref.watch(loadingServiceProvider),
  clipboardService: ref.watch(clipboardServiceProvider),
);
