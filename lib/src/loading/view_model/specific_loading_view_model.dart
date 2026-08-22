import 'package:custom_core_types/custom_core_types.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';
import 'package:riverpod_wrapper/src/key_holder/explicit_key_holder.dart';
import 'package:riverpod_wrapper/src/di/loading_providers.dart';

part 'specific_loading_view_model.g.dart';

/// 固有のローディングを管理するクラス
///
/// 対象のローディングを反映させる Widget クラスで key（String）を指定して呼び出す。
/// ```
/// class SubmitButton extends ConsumerWidget {
///   const SubmitButton({super.key});
///
///   // 一意のキーを定義
///   static const loadingKey = 'submit_button_loading';
///
///   @override
///   Widget build(BuildContext context, WidgetRef ref) {
///     // 特定キーのローディング状態を監視
///     final isLoading = ref.watch(localLoadingViewModelProvider(loadingKey));
///
///     return ElevatedButton(...);
///   }
///   ...
/// }
/// ```
@riverpod
class SpecificLoadingViewModel extends _$SpecificLoadingViewModel {
  /// 固有ローディングの key 管理オブジェクトの getter
  ExplicitKeyHolder get _loadingKeyHolder =>
      ref.read(loadingKeyHolderProvider);

  /// 通知送信口
  NotificationService get _notificator => ref.read(notificationServiceProvider);

  /// エラー通知メソッド
  void _notifyError({required String exception})
  // 折りたたみ用
  {
    _notificator.notifyInfo(
      layer: null,
      type: NotificationType.error,
      notification: "SpecificLoadingViewModel: \n$exception",
    );
  }

  @override
  bool build(String key) {
    // todo （2026/08/18）＞＞
    final Result<int, Exception> result = _loadingKeyHolder.register(
      alias: key,
    );
    switch (result) {
      case Success():
        return false;
      case Failure(exception: final Exception e):
        _notifyError(exception: e.toString());
        return true;
    }
  }

  /// 固有ローディング開始
  void start() {
    state = true;
  }

  /// 固有ローディング終了
  void stop() {
    if(!state){
      throw Exception("コンパイルエラー: 固有ローディングが起動していない状態で stop が呼ばれました。");
    }
    state = false;
  }
}

/// ロジック層が [SpecificLoadingViewModel] を呼び出すためのポート
///
/// [int] の識別子を指定して呼び出す。
SpecificLoadingViewModel specificLoadingViewModelPort(Ref ref, int key) {
  final String? alias = ref.watch(
    loadingKeyHolderProvider.select((keys) => keys.alias(key)),
  );
  if (alias == null) {
    throw Exception("識別子に対応するエイリアスが見つかりません。（specificLoadingViewModelPort）");
  }
  return ref.watch(specificLoadingViewModelProvider(alias).notifier);
}

/// printメソッド [ローディング管理クラス]
void _print(String s1, [String? s2, String? s3, String? s4, String? s5]) {
  if (kDebugMode) {
    print("");
    print("[ローディング管理クラス]　" + s1);
    if (s2 != null) print("[ローディング管理クラス]　" + s2);
    if (s3 != null) print("[ローディング管理クラス]　" + s3);
    if (s4 != null) print("[ローディング管理クラス]　" + s4);
    if (s5 != null) print("[ローディング管理クラス]　" + s5);
    print("");
  }
}
