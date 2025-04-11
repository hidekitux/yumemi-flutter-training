import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/common/interfaces/usecase.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';

class ReloadWeatherUseCase implements UseCase<WeatherInfo> {
  const ReloadWeatherUseCase(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  void execute({
    required UseCaseSuccessCallback<WeatherInfo> onSuccess,
    required UseCaseErrorCallback onError,
  }) {
    final weatherInfo = _weatherRepository.getWeather();
    switch (weatherInfo) {
      case Success<WeatherInfo>():
        onSuccess(weatherInfo.value);
      case Failure<WeatherInfo>():
        onError(weatherInfo.message);
    }
  }
}
