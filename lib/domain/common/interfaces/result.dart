sealed class Result<T> {}

final class Success<T> extends Result<T> {
  Success(this.value);

  final T value;
}

final class Failure<T> extends Result<T> {
  Failure(this.message);

  final String message;
}
