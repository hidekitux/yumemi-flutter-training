import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/presentation/weather/states/weather_view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_view_model.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {
  @override
  WeatherViewState build() => const WeatherViewState.data();

  void reloadWeather() => ref
      .read(reloadWeatherUseCaseProvider)
      .execute(
        onSuccess: (weatherInfo) {
          state = WeatherViewState.data(
            weatherCondition: weatherInfo.weatherCondition,
            minTemperature: weatherInfo.minTemperature.toString(),
            maxTemperature: weatherInfo.maxTemperature.toString(),
          );
        },
        onError: (errorMessage) {
          state = WeatherViewState.error(
            weatherCondition: state.weatherCondition,
            minTemperature: state.minTemperature,
            maxTemperature: state.maxTemperature,
            errorMessage: errorMessage,
          );
        },
      );
}
