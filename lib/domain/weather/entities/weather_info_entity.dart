import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_info_entity.g.dart';

@JsonSerializable()
class WeatherInfo {
  const WeatherInfo({
    required this.weatherCondition,
    required this.maxTemperature,
    required this.minTemperature,
    required this.date,
  });

  factory WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoFromJson(json);

  final WeatherCondition weatherCondition;
  final int maxTemperature;
  final int minTemperature;
  final DateTime date;

  Map<String, dynamic> toJson() => _$WeatherInfoToJson(this);
}
