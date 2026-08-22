
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

part 'notification_view_model.g.dart';

@riverpod
class NotificationViewModel extends _$NotificationViewModel{

  @override
  Notified? build() => null;

  void update(Notified notifiedInfo){
    state = notifiedInfo;
  }
}

class NotificationController{
  void notifyConsumed(){

  }
}