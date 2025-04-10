import 'package:flutter_training/domain/common/usecase.dart';
import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';

class ReloadWeatherUseCase implements UseCase<WeatherCondition> {
  ReloadWeatherUseCase(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  void execute({
    required UseCaseSuccessCallback<WeatherCondition> onSuccess,
    required UseCaseErrorCallback onError,
  }) {
    try {
      final weatherCondition = WeatherCondition.fromString(
        _weatherRepository.getSimpleWeather(),
      );
      return onSuccess(weatherCondition);
    } on Exception catch (error) {
      return onError(error);
    }
  }
}
