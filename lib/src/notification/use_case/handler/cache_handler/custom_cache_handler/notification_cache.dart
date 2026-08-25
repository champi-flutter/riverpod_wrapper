

import 'package:custom_core_types/custom_core_types.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/notification/use_case/handler/cache_handler/custom_cache_handler/notification_cache_entry.dart';

class NotificationCache extends BaseCache<int, Notified, NotificationCacheEntry>{
  @override
  NotificationCacheEntry createEntry(Notified value) => NotificationCacheEntry(value);

  /// 使用したキャッシュを削除する
  void evictConsumedCache(int key){
    if(storage.containsKey(key)) {
      removeAt(key);
    } else {
      throw Exception("evictConsumedCache の段階で対象のキャッシュが存在しません。");
    }
  }

  /// 通知が20を超える場合は、受け入れないようにする
  ///
  /// fixme その旨を通知する（2026/08/25）＞＞
  @override
  void onAddEntry(int key) {
    // 20を超える通知
    if (length >= 20) {
      removeAt(key);
    }
  }
}