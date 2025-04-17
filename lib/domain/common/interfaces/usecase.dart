import 'package:flutter_training/domain/common/interfaces/result.dart';

typedef UseCaseSuccessCallback<T> = void Function(T value);
typedef UseCaseErrorCallback = void Function(String message);

abstract class UseCase<T> {
  Result<T> execute();
}
