import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';

abstract class WeatherRepository {
  String getSimpleWeather();
}

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(this._weatherService);

  final WeatherService _weatherService;

  @override
  String getSimpleWeather() {
    return _weatherService.fetchSimpleWeather();
  }
}
