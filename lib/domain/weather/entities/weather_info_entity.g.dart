// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'weather_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherInfoEntity _$WeatherInfoEntityFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_WeatherInfoEntity',
      json,
      ($checkedConvert) {
        final val = _WeatherInfoEntity(
          weatherCondition: $checkedConvert(
            'weather_condition',
            (v) => $enumDecode(_$WeatherConditionEntityEnumMap, v),
          ),
          maxTemperature: $checkedConvert(
            'max_temperature',
            (v) => (v as num).toInt(),
          ),
          minTemperature: $checkedConvert(
            'min_temperature',
            (v) => (v as num).toInt(),
          ),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'weatherCondition': 'weather_condition',
        'maxTemperature': 'max_temperature',
        'minTemperature': 'min_temperature',
      },
    );

Map<String, dynamic> _$WeatherInfoEntityToJson(_WeatherInfoEntity instance) =>
    <String, dynamic>{
      'weather_condition':
          _$WeatherConditionEntityEnumMap[instance.weatherCondition]!,
      'max_temperature': instance.maxTemperature,
      'min_temperature': instance.minTemperature,
      'date': instance.date.toIso8601String(),
    };

const _$WeatherConditionEntityEnumMap = {
  WeatherConditionEntity.sunny: 'sunny',
  WeatherConditionEntity.cloudy: 'cloudy',
  WeatherConditionEntity.rainy: 'rainy',
};
