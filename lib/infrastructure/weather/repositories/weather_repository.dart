import 'package:flutter_training/domain/common/constants/common_error_messages.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/constants/weather_error_message.dart';
import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherRepository {
  WeatherRepository(this._weatherService);

  final WeatherService _weatherService;

  Result<WeatherCondition> getThrowsWeather() {
    try {
      final result = _weatherService.fetchThrowsWeather();
      final weatherCondition = WeatherCondition.fromString(result);
      return Success(weatherCondition);
    } on YumemiWeatherError catch (error) {
      return Failure(error.message);
    } on Exception {
      return Failure(ErrorMessages.unknown.message);
    }
  }
}
