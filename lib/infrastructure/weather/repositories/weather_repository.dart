import 'package:flutter/foundation.dart';
import 'package:flutter_training/domain/common/constants/common_error_messages.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/constants/weather_error_messages.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherRepository {
  const WeatherRepository(this._weatherService);

  final WeatherService _weatherService;

  Result<WeatherInfo> getWeather() {
    try {
      final response = _weatherService.fetchWeather();
      return Success(response.toInfo());
    } on YumemiWeatherError catch (error, stackTrace) {
      if (kDebugMode) {
        debugPrint(error.toString());
        debugPrintStack(stackTrace: stackTrace);
      }
      return Failure(error.message);
    } on Exception catch (error, stackTrace) {
      if (kDebugMode) {
        debugPrint(error.toString());
        debugPrintStack(stackTrace: stackTrace);
      }
      return Failure(CommonErrorMessages.unknown.message);
    }
  }
}
