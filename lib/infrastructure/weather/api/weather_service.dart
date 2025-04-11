import 'dart:convert';

import 'package:flutter_training/infrastructure/weather/api/weather_request.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_response.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherService {
  WeatherService(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  WeatherResponse fetchWeather() {
    // TODO: 仮の値を変更する
    final requestData = WeatherRequest(area: 'tokyo', date: DateTime.now());
    final requestString = jsonEncode(requestData.toJson());
    final jsonString = _yumemiWeather.fetchWeather(requestString);
    final jsonData = jsonDecode(jsonString);

    if (jsonData is Map<String, dynamic>) {
      return WeatherResponse.fromJson(jsonData);
    } else {
      throw const FormatException('Invalid weather data');
    }
  }
}
