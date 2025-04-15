import 'dart:convert';

import 'package:flutter_training/infrastructure/weather/api/weather_request.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_response.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherService {
  const WeatherService(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  WeatherResponse fetchWeather(WeatherRequest weatherRequest) {
    final requestString = jsonEncode(weatherRequest.toJson());
    final responseString = _yumemiWeather.fetchWeather(requestString);
    final responseJson = jsonDecode(responseString);

    if (responseJson is Map<String, dynamic>) {
      return WeatherResponse.fromJson(responseJson);
    } else {
      throw const FormatException('Invalid weather data');
    }
  }
}
