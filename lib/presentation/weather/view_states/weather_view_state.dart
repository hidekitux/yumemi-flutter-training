import 'package:flutter_training/domain/weather/constants/weather_condition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_view_state.freezed.dart';

@freezed
abstract class WeatherViewState with _$WeatherViewState {
  const factory WeatherViewState({
    @Default('**') String minTemperature,
    @Default('**') String maxTemperature,
    @Default(null) WeatherCondition? weatherCondition,
  }) = _WeatherViewState;

  // Added a constructor to manually add methods to a class in freezed
  // ignore: unused_element
  const WeatherViewState._();

  (String, String, WeatherCondition?) toRecord() => (
    minTemperature,
    maxTemperature,
    weatherCondition,
  );
}
