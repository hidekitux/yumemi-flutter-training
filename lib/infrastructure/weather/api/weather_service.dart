import 'package:yumemi_weather/yumemi_weather.dart';

abstract class WeatherService {
  String fetchThrowsWeather();
}

class WeatherServiceImpl implements WeatherService {
  WeatherServiceImpl(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  @override
  String fetchThrowsWeather() {
    // TODO: 仮の値を変更する
    return _yumemiWeather.fetchThrowsWeather('tokyo');
  }
}
