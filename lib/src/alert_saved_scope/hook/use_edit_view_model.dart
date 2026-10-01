

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_wrapper/riverpod_wrapper.dart';

EditViewModelToken useEditViewModel(WidgetRef ref) {
  // 初回のみ Token を生成して保持
  final Token token = useMemoized(() => ref.generateToken());

  // ViewModel の状態を監視
  final bool state = ref.watch(editViewModelProvider(token));
  return EditViewModelToken(token, state);
}

class EditViewModelToken {
  final Token token;
  final bool state;

  const EditViewModelToken(this.token, this.state);
}

// region パターン化
// ({Token token, bool isEdited}) useEditViewModel(WidgetRef ref) {
//   // 初回のみ Token を生成して保持
//   final Token token = useMemoized(() => ref.generateToken());
//
//   // ViewModel の状態を監視
//   final bool state = ref.watch(editViewModelProvider(token));
//
//   return (token: token, isEdited: state);
// }
// endregion