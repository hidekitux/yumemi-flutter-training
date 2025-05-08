import 'package:flutter_training/domain/common/interfaces/result.dart';

typedef UseCaseSuccessCallback<T> = void Function(T value);
typedef UseCaseErrorCallback = void Function(String message);

/// T: 戻り値, P: 引数
abstract class UseCase<T, P> {
  Future<Result<T>> call(P params);
}
