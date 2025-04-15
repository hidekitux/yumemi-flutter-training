import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_target_entity.freezed.dart';
part 'weather_target_entity.g.dart';

@freezed
abstract class WeatherTarget with _$WeatherTarget {
  const factory WeatherTarget({required String area, required DateTime date}) =
      _WeatherTarget;

  factory WeatherTarget.fromJson(Map<String, Object?> json) =>
      _$WeatherTargetFromJson(json);
}
