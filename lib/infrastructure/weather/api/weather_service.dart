import 'dart:convert';

import 'package:flutter_training/infrastructure/weather/api/weather_request.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_response.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherService {
  const WeatherService(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  WeatherResponse fetchWeather(WeatherRequest weatherRequest) {
    final requestString = jsonEncode(weatherRequest.toJson());
    final jsonString = _yumemiWeather.fetchWeather(requestString);
    final jsonData = jsonDecode(jsonString);

    if (jsonData is Map<String, dynamic>) {
      return WeatherResponse.fromJson(jsonData);
    } else {
      throw const FormatException('Invalid weather data');
    }
  }
}
