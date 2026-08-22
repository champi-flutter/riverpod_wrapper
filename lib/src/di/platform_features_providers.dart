import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/src/platform_features/gateway/platform_features_driver_impl.dart';
import 'package:riverpod_wrapper/src/platform_features/use_case/driver_interface/platform_features_driver.dart';

part 'platform_features_providers.g.dart';


/// プラットフォームの機能へのインターフェース
@riverpod
PlatformFeaturesDriver platformFeaturesDriver(Ref ref) =>
    PlatformFeaturesDriverImpl();