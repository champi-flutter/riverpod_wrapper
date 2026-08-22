import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

part 'launch_support_providers.g.dart';

/// 外部通信サービスクラス
@riverpod
LaunchSupportLinkService launchSupportLinkService(Ref ref) =>
    LaunchSupportLinkService(
      externalLaunchRepository: ref.watch(externalLaunchRepositoryProvider),
    );

/// 外部通信リポジトリ
@riverpod
ExternalLaunchRepository externalLaunchRepository(Ref ref) =>
    ExternalLaunchRepositoryImpl(notificationService: ref.watch(notificationServiceProvider));

