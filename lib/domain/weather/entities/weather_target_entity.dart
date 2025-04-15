import 'package:json_annotation/json_annotation.dart';

part 'weather_target_entity.g.dart';

@JsonSerializable()
class WeatherTarget {
  const WeatherTarget({required this.area, required this.date});

  factory WeatherTarget.fromJson(Map<String, dynamic> json) =>
      _$WeatherTargetFromJson(json);

  final String area;
  final DateTime date;

  Map<String, dynamic> toJson() => _$WeatherTargetToJson(this);
}
