
import 'dart:async';

import 'package:custom_core_types/custom_core_types.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

class NotificationCacheEntry extends BaseCacheEntry<Notified>{

  NotificationCacheEntry(super.value);

  @override
  void onAccess() {}
}