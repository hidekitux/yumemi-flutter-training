typedef UseCaseSuccessCallback<T> = void Function(T value);
typedef UseCaseErrorCallback = void Function(Object error);

// setStateを使っている関係上、コールバックで実装している
// TODO: コールバックでの実装を見直す
abstract class UseCase<T> {
  void execute(
    UseCaseSuccessCallback<T> onSuccess,
    UseCaseErrorCallback onError,
  );
}
