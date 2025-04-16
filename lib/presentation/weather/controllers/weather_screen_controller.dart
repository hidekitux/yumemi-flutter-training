import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/presentation/weather/states/weather_screen_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_screen_controller.g.dart';

@riverpod
class WeatherScreenController extends _$WeatherScreenController {
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
