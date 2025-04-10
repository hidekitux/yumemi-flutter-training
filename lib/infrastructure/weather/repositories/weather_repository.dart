import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';

class WeatherRepository {
  WeatherRepository(this._weatherService);

  final WeatherService _weatherService;

  String getSimpleWeather() {
    return _weatherService.fetchSimpleWeather();
  }
}
