import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';
import 'package:flutter_training/presentation/weather/view_states/weather_view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_view_model.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {
  @override
  FutureOr<WeatherViewState> build() => const WeatherViewState();

  /// 天気予報を取得し、実行結果に応じてstateを更新する
  /// - 成功時: エラーメッセージを消去し、取得した天気予報でstateを更新する
  /// - 失敗時: 元の天気予報を保持しながら、エラーメッセージでstateを更新する
  Future<void> reloadWeather(WeatherTargetEntity weatherTarget) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(reloadWeatherUseCaseProvider)
        .call(weatherTarget);

    state = switch (result) {
      Success(value: final weatherInfo) => AsyncValue.data(
        WeatherViewState(
          weatherCondition: weatherInfo.weatherCondition,
          minTemperature: weatherInfo.minTemperature.toString(),
          maxTemperature: weatherInfo.maxTemperature.toString(),
        ),
      ),
      Failure(:final message) => AsyncValue.error(message, StackTrace.current),
    };
  }
}
