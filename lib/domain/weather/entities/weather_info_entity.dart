import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_info_entity.freezed.dart';
part 'weather_info_entity.g.dart';

@freezed
abstract class WeatherInfoEntity with _$WeatherInfoEntity {
  const factory WeatherInfoEntity({
    required WeatherConditionEntity weatherCondition,
    required int maxTemperature,
    required int minTemperature,
    required DateTime date,
  }) = _WeatherInfoEntity;

  factory WeatherInfoEntity.fromJson(Map<String, Object?> json) =>
      _$WeatherInfoEntityFromJson(json);
}
