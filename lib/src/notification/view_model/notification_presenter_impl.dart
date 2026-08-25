import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/src/di/launch_support_providers.dart';
import 'package:riverpod_wrapper/src/notification/type_definition/notification_typedef.dart';
import 'package:riverpod_wrapper/src/notification/use_case/input_boundary/notification_service.dart';
import 'package:riverpod_wrapper/src/notification/use_case/output_boundary/notification_presenter.dart';
import 'package:riverpod_wrapper/src/notification/view_model/notification_view_model.dart';
import 'package:rxdart/rxdart.dart';

/// 通知反映クラスの具象クラス
class NotificationPresenterImpl implements NotificationPresenter{

  NotificationPresenterImpl({
    required NotificationViewModel notificationViewModel,
  }) : _viewModel = notificationViewModel;

  /// VM へのアクセス
  final NotificationViewModel _viewModel;

  @override
  void present(Notified notifiedInfo){
    _viewModel.update(notifiedInfo);
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
