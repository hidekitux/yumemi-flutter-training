import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';

abstract class WeatherRepository {
  String getThrowsWeather();
}

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(this._weatherService);

  final WeatherService _weatherService;

  @override
  String getThrowsWeather() {
    return _weatherService.fetchThrowsWeather();
  }
}
