import 'package:flutter_training/domain/weather/constants/weather_condition.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';

final defaultDateTime = DateTime(2025, 4);

WeatherTargetEntity createWeatherTarget({
  String area = 'tokyo',
  DateTime? date,
}) => WeatherTargetEntity(area: area, date: date ?? defaultDateTime);

WeatherInfoEntity createWeatherInfo({
  WeatherCondition? weatherCondition,
  int? maxTemperature,
  int? minTemperature,
  DateTime? date,
}) => WeatherInfoEntity(
  weatherCondition: weatherCondition ?? WeatherCondition.sunny,
  maxTemperature: maxTemperature ?? 25,
  minTemperature: minTemperature ?? 1,
  date: date ?? defaultDateTime,
);
