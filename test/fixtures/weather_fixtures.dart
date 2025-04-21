import 'package:flutter_training/domain/weather/constants/weather_condition.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';

WeatherTargetEntity createWeatherTarget({
  String area = 'tokyo',
  DateTime? date,
}) => WeatherTargetEntity(area: area, date: date ?? DateTime(2025, 4));

/// createWeatherTargetを利用するテストにおいて、そのdateや他の値をdateに明示的に指定する
/// createWeatherTargetを利用しないテストにおいて、nullや他の値をdateに明示的に指定する
WeatherInfoEntity createWeatherInfo({
  required DateTime? date,
  WeatherCondition? weatherCondition,
  int? maxTemperature,
  int? minTemperature,
}) => WeatherInfoEntity(
  weatherCondition: weatherCondition ?? WeatherCondition.sunny,
  maxTemperature: maxTemperature ?? 25,
  minTemperature: minTemperature ?? 1,
  date: date ?? DateTime(2025, 4),
);
