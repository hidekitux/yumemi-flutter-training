import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherService {
  WeatherService(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  String fetchSimpleWeather() {
    return _yumemiWeather.fetchSimpleWeather();
  }
}
