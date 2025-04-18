import 'package:flutter_training/domain/weather/constants/weather_condition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_view_state.freezed.dart';

@freezed
sealed class WeatherViewState with _$WeatherViewState {
  const factory WeatherViewState.data({
    @Default(null) WeatherCondition? weatherCondition,
    @Default('**') String minTemperature,
    @Default('**') String maxTemperature,
  }) = WeatherViewStateInitial;

  const factory WeatherViewState.error({
    required WeatherCondition? weatherCondition,
    required String minTemperature,
    required String maxTemperature,
    required String errorMessage,
  }) = WeatherViewStateError;
}
