import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/launch_support_providers.dart';
import 'package:riverpod_wrapper/src/notification/type_definition/notification_typedef.dart';
import 'package:riverpod_wrapper/src/notification/use_case/notification_service.dart';
import 'package:rxdart/rxdart.dart';

/// 各クラスから何らかの通知を受け取り、画面に知らせるクラス
class NotificationPresenter {
  // todo コンストラクタ
  NotificationPresenter({required NotificationService notificationService})
    : _notificationService = notificationService {
    // 購読を開始
    _subscription = _notificationService.notificationStream.listen((
      Notified event,
    ) {
      _notificationController.add(event);
    });
  }

  /// 通知送信クラスのインスタンス
  final NotificationService _notificationService;

  final _notificationController = BehaviorSubject<Notified>();

  /// 通知を受信するストリーム
  Stream<Notified> get notificationStream => _notificationController.stream;

  StreamSubscription<Notified>? _subscription;

  /// コントローラを破棄。
  void dispose() {
    _subscription?.cancel();
    _notificationController.close();
  }
}

/// printメソッド [通知表示管理クラス]
void _print(String s1, [String? s2, String? s3, String? s4, String? s5]) {
  if (kDebugMode) {
    print("");
    print("[通知表示管理クラス]　" + s1);
    if (s2 != null) print("[通知表示管理クラス]　" + s2);
    if (s3 != null) print("[通知表示管理クラス]　" + s3);
    if (s4 != null) print("[通知表示管理クラス]　" + s4);
    if (s5 != null) print("[通知表示管理クラス]　" + s5);
    print("");
  }
}
