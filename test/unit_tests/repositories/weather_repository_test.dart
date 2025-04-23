import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/domain/common/constants/common_error_messages.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/constants/weather_error_messages.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';
import 'package:flutter_training/infrastructure/weather/repository_providers.dart';
import 'package:flutter_training/infrastructure/weather/service_providers.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

import '../../fixtures/weather_fixtures.dart';
import 'weather_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<WeatherService>()])
void main() {
  // Arrange
  final mockWeatherService = MockWeatherService();
  final weatherRepository = WeatherRepository(mockWeatherService);
  final weatherTarget = createWeatherTarget();

  test('weatherRepositoryProvider creates WeatherRepository', () {
    // Arrange
    final container = ProviderContainer(
      overrides: [weatherServiceProvider.overrideWithValue(mockWeatherService)],
    );

    // Act
    final repository = container.read(weatherRepositoryProvider);

    // Assert
    expect(repository, isA<WeatherRepository>());

    // Clean up
    container.dispose();
  });

  test('getWeather returns expected weather info, if API call succeeds', () {
    // Arrange
    final expectedWeatherInfo = createWeatherInfo(date: weatherTarget.date);
    when(mockWeatherService.fetchWeather(any)).thenReturn(expectedWeatherInfo);

    // Act
    final result = weatherRepository.getWeather(weatherTarget);

    // Assert
    expect(
      result,
      isA<Success<WeatherInfoEntity>>().having(
        (e) => e.value,
        'having value equal to expectedWeatherInfo',
        expectedWeatherInfo,
      ),
    );
    verify(mockWeatherService.fetchWeather(weatherTarget)).called(1);
  });

  for (final error in YumemiWeatherError.values) {
    test('getWeather returns Failure, if API throws $error', () {
      // Arrange
      when(mockWeatherService.fetchWeather(any)).thenThrow(error);

      // Act
      final result = weatherRepository.getWeather(weatherTarget);

      // Assert
      expect(
        result,
        isA<Failure<WeatherInfoEntity>>().having(
          (e) => e.message,
          'check message',
          error.message,
        ),
      );
      verify(mockWeatherService.fetchWeather(weatherTarget)).called(1);
    });
  }

  test('getWeather returns Failure, if API returns invalid data', () {
    // Arrange
    late Result<WeatherInfoEntity> result;
    when(
      mockWeatherService.fetchWeather(any),
    ).thenThrow(const FormatException());

    // Act and Assert
    expect(
      () => result = weatherRepository.getWeather(weatherTarget),
      returnsNormally,
    );
    expect(
      result,
      isA<Failure<WeatherInfoEntity>>().having(
        (failure) => failure.message,
        'check message',
        CommonErrorMessages.unknown.message,
      ),
    );
    verify(mockWeatherService.fetchWeather(weatherTarget)).called(1);
  });
}
