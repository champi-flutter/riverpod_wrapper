import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/src/notification/use_case/event_notifier.dart';
import 'package:riverpod_wrapper/src/notification/view_model/notification_view_model.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/gateway/external_launch_repository_impl.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/use_case/launch_support_link_service.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/use_case/repository_interface/external_launch_repository.dart';
import 'package:riverpod_wrapper/src/scaffold_menu_bar/view_model/menu_bar_view_model.dart';

part 'providers.g.dart';

// todo UseCase

/// 通知送信クラス
///
/// 生成される Provider のインスタンスの名前は、"Notifier" が削られて、`eventProvider`
/// になる。
@riverpod
EventNotifier eventNotifier(Ref ref) => EventNotifier();

/// 外部通信サービスクラス
@riverpod
LaunchSupportLinkService launchSupportLinkService(Ref ref) =>
    LaunchSupportLinkService(ref);

// todo Gateway
/// 外部通信リポジトリ
@riverpod
ExternalLaunchRepository externalLaunchRepository(Ref ref) =>
    ExternalLaunchRepositoryImpl(ref);

// todo ViewModel（状態なし）
/// 通知管理クラス
@riverpod
NotificationViewModel notificationViewModel(Ref ref) =>
    NotificationViewModel(ref);

/// サイドバーVM
@riverpod
MenuBarViewModel menuBarViewModel(Ref ref) => MenuBarViewModel(ref);
