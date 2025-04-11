import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';

class WeatherResponse {
  const WeatherResponse({
    required this.weatherCondition,
    required this.maxTemperature,
    required this.minTemperature,
    required this.date,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      WeatherResponse(
        weatherCondition: json['weather_condition'] as String,
        maxTemperature: json['max_temperature'] as int,
        minTemperature: json['min_temperature'] as int,
        date: json['date'] as String,
      );

  final String weatherCondition;
  final int maxTemperature;
  final int minTemperature;
  final String date;

  WeatherInfo toInfo() => WeatherInfo(
    weatherCondition: WeatherCondition.fromString(weatherCondition),
    maxTemperature: maxTemperature,
    minTemperature: minTemperature,
    date: DateTime.parse(date),
  );
}
