// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'weather_target_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherTarget _$WeatherTargetFromJson(Map<String, dynamic> json) =>
    $checkedCreate('WeatherTarget', json, ($checkedConvert) {
      final val = WeatherTarget(
        area: $checkedConvert('area', (v) => v as String),
        date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$WeatherTargetToJson(WeatherTarget instance) =>
    <String, dynamic>{
      'area': instance.area,
      'date': instance.date.toIso8601String(),
    };
