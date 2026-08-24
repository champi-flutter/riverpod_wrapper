library riverpod_wrapper;

// di
export 'package:riverpod_wrapper/src/di/launch_support_providers.dart';
export 'package:riverpod_wrapper/src/di/clipboard_providers.dart';
export 'package:riverpod_wrapper/src/di/loading_providers.dart';
export 'package:riverpod_wrapper/src/di/menu_bar_providers.dart';
export 'package:riverpod_wrapper/src/di/notification_providers.dart';
export 'package:riverpod_wrapper/src/di/platform_features_providers.dart';

// loading
export 'package:riverpod_wrapper/src/loading/entity/general_loading_state.dart';
export 'package:riverpod_wrapper/src/loading/use_case/input_boundary/loading_service.dart';
export 'package:riverpod_wrapper/src/loading/use_case/input_boundary/requires_restarting_emulator_use_case.dart';
// export 'package:riverpod_wrapper/src/loading/view_model/general_loading_view_model.dart';
export 'package:riverpod_wrapper/src/loading/view/loading_view.dart';
export 'package:riverpod_wrapper/src/loading/view/loading_wrapper.dart';
export 'package:riverpod_wrapper/src/loading/view/reset_view.dart';

// notification
export 'package:riverpod_wrapper/src/notification/type_definition/notification_typedef.dart';
export 'package:riverpod_wrapper/src/notification/use_case/input_boundary/notification_service.dart';
export 'package:riverpod_wrapper/src/notification/view_model/notification_presenter.dart';
export 'package:riverpod_wrapper/src/notification/view/notification_view.dart';

// scaffold_menu_bar
export 'package:riverpod_wrapper/src/scaffold_menu_bar/gateway/external_launch_repository_impl.dart';
export 'package:riverpod_wrapper/src/scaffold_menu_bar/use_case/repository_interface/external_launch_repository.dart';
export 'package:riverpod_wrapper/src/scaffold_menu_bar/use_case/launch_support_link_service.dart';
export 'package:riverpod_wrapper/src/scaffold_menu_bar/view_model/menu_bar_view_model.dart';
export 'package:riverpod_wrapper/src/scaffold_menu_bar/view/scaffold_menu_bar.dart';
export 'package:riverpod_wrapper/src/scaffold_menu_bar/view/report_dialog.dart';

// 2026/06/11 追加: clipboard
export 'package:riverpod_wrapper/src/clipboard/use_case/clipboard_service.dart';

export 'package:riverpod_wrapper/src/clipboard/view_model/clipboard_view_model.dart';

// 2026/06/12 追加: edit_saved_pop_scope （custom_widgets から移行）
export 'package:riverpod_wrapper/src/edit_saved_pop_scope/view/edit_saved_pop_scope.dart';

export 'package:riverpod_wrapper/src/edit_saved_pop_scope/view_controller/edit_saving_controller.dart';

// 2026/08/05 追加
export 'package:riverpod_wrapper/src/key_holder/auto_integer_key_holder.dart';

// todo 新しく追加した場合は、ここに追加（2026/06/06）＞＞
