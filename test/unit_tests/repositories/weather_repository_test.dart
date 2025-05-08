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

  test(
    'getWeather returns expected weather info, if API call succeeds',
    () async {
      // Arrange
      final expectedWeatherInfo = createWeatherInfo();
      when(
        mockWeatherService.fetchWeather(weatherTarget),
      ).thenAnswer((_) => Future.value(expectedWeatherInfo));

      // Act
      final result = await weatherRepository.getWeather(weatherTarget);

      // Assert
      expect(
        result,
        isA<Success<WeatherInfoEntity>>().having(
          (success) => success.value,
          'having value equal to expectedWeatherInfo',
          expectedWeatherInfo,
        ),
      );
      verify(mockWeatherService.fetchWeather(weatherTarget)).called(1);
    },
  );

  for (final error in YumemiWeatherError.values) {
    test('getWeather returns Failure, if API throws $error', () async {
      // Arrange
      when(mockWeatherService.fetchWeather(weatherTarget)).thenThrow(error);

      // Act
      final result = await weatherRepository.getWeather(weatherTarget);

      // Assert
      expect(
        result,
        isA<Failure<WeatherInfoEntity>>().having(
          (failure) => failure.message,
          'having message equal to $error',
          error.message,
        ),
      );
      verify(mockWeatherService.fetchWeather(weatherTarget)).called(1);
    });
  }

  test('getWeather returns Failure, if API returns invalid data', () async {
    // Arrange
    when(
      mockWeatherService.fetchWeather(weatherTarget),
    ).thenThrow(const FormatException());

    // Act
    final result = await weatherRepository.getWeather(weatherTarget);

    // Assert
    expect(
      result,
      isA<Failure<WeatherInfoEntity>>().having(
        (failure) => failure.message,
        'having message equal to ${CommonErrorMessages.unknown.message}',
        CommonErrorMessages.unknown.message,
      ),
    );
    verify(mockWeatherService.fetchWeather(weatherTarget)).called(1);
  });
}
