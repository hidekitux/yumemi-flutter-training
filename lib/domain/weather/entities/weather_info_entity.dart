import 'package:flutter_training/domain/weather/constants/weather_condition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_info_entity.freezed.dart';
part 'weather_info_entity.g.dart';

@freezed
abstract class WeatherInfoEntity with _$WeatherInfoEntity {
  const factory WeatherInfoEntity({
    required WeatherCondition weatherCondition,
    required int maxTemperature,
    required int minTemperature,
    required DateTime date,
  }) = _WeatherInfoEntity;

  factory WeatherInfoEntity.fromJson(Map<String, Object?> json) =>
      _$WeatherInfoEntityFromJson(json);
}
