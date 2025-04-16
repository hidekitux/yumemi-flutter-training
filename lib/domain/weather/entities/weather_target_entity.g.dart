// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'weather_target_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherTargetEntity _$WeatherTargetEntityFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_WeatherTargetEntity', json, ($checkedConvert) {
      final val = _WeatherTargetEntity(
        area: $checkedConvert('area', (v) => v as String),
        date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$WeatherTargetEntityToJson(
  _WeatherTargetEntity instance,
) => <String, dynamic>{
  'area': instance.area,
  'date': instance.date.toIso8601String(),
};
