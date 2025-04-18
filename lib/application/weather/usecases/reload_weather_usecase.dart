import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/common/interfaces/usecase.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';

class ReloadWeatherUseCase
    implements UseCase<WeatherInfoEntity, WeatherTargetEntity> {
  const ReloadWeatherUseCase(this._weatherRepository);

  final WeatherRepository _weatherRepository;

  @override
  Result<WeatherInfoEntity> execute(WeatherTargetEntity weatherTarget) =>
      _weatherRepository.getWeather(weatherTarget);
}
