
/// エミュレータを再起動する必要があることを知らせる処理フロー
///   1. [execute] が呼ばれる
///   2. Presenter を呼び出す
abstract class RequiresRestartingEmulatorUseCase {
  void execute();
}