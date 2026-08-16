import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/loading/use_case/interactor/loading_interactor.dart';
import 'package:riverpod_wrapper/src/loading/use_case/interactor/requires_restarting_emulator_interactor.dart';
import 'package:riverpod_wrapper/src/loading/use_case/output_boundary/loading_presenter.dart';
import 'package:riverpod_wrapper/src/loading/view_model/loading_presenter_impl.dart';
import 'package:riverpod_wrapper/src/loading/view_model/loading_view_model.dart';
import 'package:riverpod_wrapper/src/platform_features/gateway/platform_features_driver_impl.dart';
import 'package:riverpod_wrapper/src/platform_features/use_case/driver_interface/platform_features_driver.dart';

part 'providers.g.dart';

// todo UseCase

/// 通知送信クラス
///
@riverpod
NotificationUseCase notificationUseCase(Ref ref) => NotificationUseCase();

/// ローディング処理フロー
@riverpod
LoadingUseCase loadingUseCase(Ref ref) =>
    LoadingInteractor(loadingPresenter: ref.watch(loadingPresenterProvider));

/// エミュレータを再起動する必要があることを知らせる処理フロー
@riverpod
RequiresRestartingEmulatorUseCase requiresRestartingEmulatorUseCase(Ref ref) =>
    RequiresRestartingEmulatorInteractor(
      loadingPresenter: ref.watch(loadingPresenterProvider),
    );

/// 外部通信サービスクラス
@riverpod
LaunchSupportLinkService launchSupportLinkService(Ref ref) =>
    LaunchSupportLinkService(
      externalLaunchRepository: ref.watch(externalLaunchRepositoryProvider),
    );

@riverpod
ClipboardUseCase clipboardUseCase(Ref ref) => ClipboardUseCase(ref);

// todo Gateway
/// 外部通信リポジトリ
@riverpod
ExternalLaunchRepository externalLaunchRepository(Ref ref) =>
    ExternalLaunchRepositoryImpl(ref);

/// プラットフォームの機能へのインターフェース
@riverpod
PlatformFeaturesDriver platformFeaturesDriver(Ref ref) =>
    PlatformFeaturesDriverImpl();

// todo ViewModel（状態なし）
/// 通知管理クラス
@riverpod
NotificationPresenter notificationPresenter(Ref ref) => NotificationPresenter(
  notificationUseCase: ref.watch(notificationUseCaseProvider),
);

/// ローディングの表示への反映ポート
@riverpod
LoadingPresenter loadingPresenter(Ref ref) => LoadingPresenterImpl(
  loadingViewModel: ref.watch(loadingViewModelProvider.notifier),
);

/// サイドバーVM
@riverpod
MenuBarViewModel menuBarViewModel(Ref ref) => MenuBarViewModel(
  notificationUseCase: ref.watch(notificationUseCaseProvider),
  launchSupportLinkService: ref.watch(launchSupportLinkServiceProvider),
  loadingUseCase: ref.watch(loadingUseCaseProvider),
);

@riverpod
ClipboardViewModel clipboardViewModel(Ref ref) => ClipboardViewModel(
  notificationUseCase: ref.watch(notificationUseCaseProvider),
  loadingUseCase: ref.watch(loadingUseCaseProvider),
  clipboardUseCase: ref.watch(clipboardUseCaseProvider),
);
