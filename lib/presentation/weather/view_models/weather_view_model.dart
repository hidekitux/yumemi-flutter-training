import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/presentation/weather/states/weather_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_view_model.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {
  @override
  WeatherScreenState build() => const WeatherScreenState.data();

  void reloadWeather() => ref
      .read(reloadWeatherUseCaseProvider)
      .execute(
        onSuccess: (weatherInfo) {
          state = WeatherScreenState.data(
            weatherCondition: weatherInfo.weatherCondition,
            minTemperature: weatherInfo.minTemperature.toString(),
            maxTemperature: weatherInfo.maxTemperature.toString(),
          );
        },
        onError: (errorMessage) {
          state = WeatherScreenState.error(
            weatherCondition: state.weatherCondition,
            minTemperature: state.minTemperature,
            maxTemperature: state.maxTemperature,
            errorMessage: errorMessage,
          );
        },
      );
}
