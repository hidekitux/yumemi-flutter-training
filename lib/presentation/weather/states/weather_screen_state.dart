import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_screen_state.freezed.dart';

@freezed
sealed class WeatherScreenState with _$WeatherScreenState {
  const factory WeatherScreenState.data({
    @Default(null) WeatherConditionEntity? weatherCondition,
    @Default('**') String minTemperature,
    @Default('**') String maxTemperature,
  }) = WeatherScreenStateInitial;

  const factory WeatherScreenState.error({
    required WeatherConditionEntity? weatherCondition,
    required String minTemperature,
    required String maxTemperature,
    required String errorMessage,
  }) = WeatherScreenStateError;
}
