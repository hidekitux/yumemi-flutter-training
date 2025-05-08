import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherService {
  const WeatherService(this._yumemiWeather);

  final YumemiWeather _yumemiWeather;

  Future<WeatherInfoEntity> fetchWeather(
    WeatherTargetEntity weatherTarget,
  ) async {
    final requestString = jsonEncode(weatherTarget.toJson());
    final responseString = await compute(
      _yumemiWeather.syncFetchWeather,
      requestString,
    );
    final responseJson = jsonDecode(responseString);

    if (responseJson is Map<String, dynamic>) {
      return WeatherInfoEntity.fromJson(responseJson);
    } else {
      throw const FormatException('Invalid weather data');
    }
  }
}
