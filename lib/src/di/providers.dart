import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/src/clipboard/use_case/clipboard_use_case.dart';
import 'package:riverpod_wrapper/src/clipboard/view_model/clipboard_view_model.dart';
import 'package:riverpod_wrapper/src/notification/use_case/notification_use_case.dart';
import 'package:riverpod_wrapper/src/notification/view_model/notification_presenter.dart';
import 'package:riverpod_wrapper/src/platform_features/gateway/platform_features_gateway_impl.dart';
import 'package:riverpod_wrapper/src/platform_features/use_case/gateway_interface/platform_features_gateway.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/gateway/external_launch_repository_impl.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/use_case/launch_support_link_service.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/use_case/repository_interface/external_launch_repository.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/view_model/menu_bar_view_model.dart';

part 'providers.g.dart';

// todo UseCase

/// 通知送信クラス
///
@riverpod
NotificationUseCase notificationUseCase(Ref ref) => NotificationUseCase();

/// 外部通信サービスクラス
@riverpod
LaunchSupportLinkService launchSupportLinkService(Ref ref) =>
    LaunchSupportLinkService(ref);

@riverpod
ClipboardUseCase clipboardUseCase(Ref ref) => ClipboardUseCase(ref);

// todo Gateway
/// 外部通信リポジトリ
@riverpod
ExternalLaunchRepository externalLaunchRepository(Ref ref) =>
    ExternalLaunchRepositoryImpl(ref);

/// プラットフォームの機能へのインターフェース
@riverpod
PlatformFeaturesGateway platformFeaturesGateway(Ref ref) => PlatformFeaturesGatewayImpl();

// todo ViewModel（状態なし）
/// 通知管理クラス
@riverpod
NotificationPresenter notificationPresenter(Ref ref) =>
    NotificationPresenter(ref);

/// サイドバーVM
@riverpod
MenuBarViewModel menuBarViewModel(Ref ref) => MenuBarViewModel(ref);

@riverpod
ClipboardViewModel clipboardViewModel(Ref ref) => ClipboardViewModel(ref);
