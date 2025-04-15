import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';

class WeatherInfo {
  const WeatherInfo({
    required this.weatherCondition,
    required this.maxTemperature,
    required this.minTemperature,
    required this.date,
  });

  final WeatherCondition weatherCondition;
  final int maxTemperature;
  final int minTemperature;
  final DateTime date;
}
