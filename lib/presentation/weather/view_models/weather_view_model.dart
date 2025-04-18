import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';
import 'package:flutter_training/presentation/weather/states/weather_view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_view_model.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {
  @override
  WeatherViewState build() => const WeatherViewState.data();

  void reloadWeather() {
    final result = ref
        .read(reloadWeatherUseCaseProvider)
        .execute(WeatherTargetEntity(area: 'Tokyo', date: DateTime.now()));

    switch (result) {
      case Success(value: final weatherInfo):
        state = WeatherViewState.data(
          weatherCondition: weatherInfo.weatherCondition,
          minTemperature: weatherInfo.minTemperature.toString(),
          maxTemperature: weatherInfo.maxTemperature.toString(),
        );
      case Failure(message: final message):
        state = WeatherViewState.error(
          weatherCondition: state.weatherCondition,
          minTemperature: state.minTemperature,
          maxTemperature: state.maxTemperature,
          errorMessage: message,
        );
    }
  }
}
