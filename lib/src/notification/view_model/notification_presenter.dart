

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/providers.dart';
import 'package:riverpod_wrapper/src/notification/type_definition/notification_typedef.dart';
import 'package:riverpod_wrapper/src/notification/use_case/notification_use_case.dart';
import 'package:rxdart/rxdart.dart';

/// 各クラスから何らかの通知を受け取り、画面に知らせるクラス
class NotificationPresenter {
  // todo コンストラクタ
  NotificationPresenter(this._ref){
    // 購読を開始
    _subscription = _readUseCase.eventStream.listen((Notified event){
      _notificationController.add(event);
    });
  }

  final Ref _ref;
  
  /// 通知送信クラスのインスタンス
  NotificationUseCase get _readUseCase => _ref.read(notificationUseCaseProvider);

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