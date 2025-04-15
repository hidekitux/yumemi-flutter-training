import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  const WeatherResponse({
    required this.weatherCondition,
    required this.maxTemperature,
    required this.minTemperature,
    required this.date,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  final String weatherCondition;
  final int maxTemperature;
  final int minTemperature;
  final String date;

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);

  WeatherInfo toInfo() => WeatherInfo(
    weatherCondition: WeatherCondition.fromString(weatherCondition),
    maxTemperature: maxTemperature,
    minTemperature: minTemperature,
    date: DateTime.parse(date),
  );
}
