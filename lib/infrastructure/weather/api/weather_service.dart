import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherService {
  WeatherService(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  String fetchThrowsWeather() {
    // TODO: 仮の値を変更する
    return _yumemiWeather.fetchThrowsWeather('tokyo');
  }
}
