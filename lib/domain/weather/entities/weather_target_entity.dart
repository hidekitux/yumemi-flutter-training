import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_target_entity.freezed.dart';
part 'weather_target_entity.g.dart';

@freezed
abstract class WeatherTargetEntity with _$WeatherTargetEntity {
  const factory WeatherTargetEntity({
    required String area,
    required DateTime date,
  }) = _WeatherTargetEntity;

  factory WeatherTargetEntity.fromJson(Map<String, Object?> json) =>
      _$WeatherTargetEntityFromJson(json);
}
