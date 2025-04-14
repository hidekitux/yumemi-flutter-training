typedef UseCaseSuccessCallback<T> = void Function(T value);
typedef UseCaseErrorCallback = void Function(String message);

// setStateを使っている関係上、コールバックで実装している
// TODO: コールバックでの実装を見直す
abstract class UseCase<T> {
  void execute({
    required UseCaseSuccessCallback<T> onSuccess,
    required UseCaseErrorCallback onError,
  });
}
