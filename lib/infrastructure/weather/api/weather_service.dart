import 'package:yumemi_weather/yumemi_weather.dart';

abstract class WeatherService {
  String fetchSimpleWeather();
}

class WeatherServiceImpl implements WeatherService {
  WeatherServiceImpl(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  @override
  String fetchSimpleWeather() {
    return _yumemiWeather.fetchSimpleWeather();
  }
}
