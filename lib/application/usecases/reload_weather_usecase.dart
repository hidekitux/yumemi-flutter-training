import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/common/interfaces/usecase.dart';
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
    final weatherCondition = _weatherRepository.getThrowsWeather();
    switch (weatherCondition) {
      case Success<WeatherCondition>():
        onSuccess(weatherCondition.value);
      case Failure<WeatherCondition>():
        onError(weatherCondition.message);
    }
  }
}
