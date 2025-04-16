import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/common/interfaces/usecase.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';

class ReloadWeatherUseCase implements UseCase<WeatherInfo> {
  const ReloadWeatherUseCase(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  void execute({
    required UseCaseSuccessCallback<WeatherInfo> onSuccess,
    required UseCaseErrorCallback onError,
  }) {
    final weatherTarget = WeatherTarget(area: 'tokyo', date: DateTime.now());
    final result = _weatherRepository.getWeather(weatherTarget);
    switch (result) {
      case Success<WeatherInfo>():
        onSuccess(result.value);
      case Failure<WeatherInfo>():
        onError(result.message);
    }
  }
}
