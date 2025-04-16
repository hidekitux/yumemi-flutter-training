import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_info_entity.freezed.dart';
part 'weather_info_entity.g.dart';

@freezed
abstract class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required WeatherCondition weatherCondition,
    required int maxTemperature,
    required int minTemperature,
    required DateTime date,
  }) = _WeatherInfo;

  factory WeatherInfo.fromJson(Map<String, Object?> json) =>
      _$WeatherInfoFromJson(json);
}
