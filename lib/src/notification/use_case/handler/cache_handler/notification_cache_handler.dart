

import 'package:custom_core_types/custom_core_types.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/cache_handler/custom_cache_handler/notification_cache.dart';

/// 通知キャッシュハンドラ
///
///  - [add]: 流す通知を追加する
///  - [output]: キャッシュ更新時の処理
abstract class NotificationCacheHandler
    extends BaseCacheHandler<int, Notified, NotificationCache> {
  NotificationCacheHandler(): super(NotificationCache());

  /// 通知追加フロー
  ///
  /// 指定の通知（[notified]）を貯めて、
  Future<void> add(Notified notified);

  /// [output] を外から呼ぶ
  Future<void> callOutput();
}