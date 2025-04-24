import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';
import 'package:flutter_training/infrastructure/weather/service_providers.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

import '../../fixtures/weather_fixtures.dart';
import 'weather_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<YumemiWeather>()])
void main() {
  // Arrange
  final mockYumemiWeather = MockYumemiWeather();
  final weatherService = WeatherService(mockYumemiWeather);
  final weatherTarget = createWeatherTarget();
  final weatherTargetJson = jsonEncode(weatherTarget.toJson());

  test('weatherServiceProvider creates WeatherService', () {
    // Arrange
    final container = ProviderContainer();

    // Act
    final service = container.read(weatherServiceProvider);

    // Assert
    expect(service, isA<WeatherService>());

    // Clean up
    container.dispose();
  });

  test('fetchWeather returns expected weather info, if API call succeeds', () {
    // Arrange
    final expectedWeatherInfo = createWeatherInfo(date: weatherTarget.date);
    final expectedJson = jsonEncode(expectedWeatherInfo.toJson());
    when(
      mockYumemiWeather.fetchWeather(weatherTargetJson),
    ).thenReturn(expectedJson);

    // Act
    final weatherInfo = weatherService.fetchWeather(weatherTarget);

    // Assert
    expect(weatherInfo, expectedWeatherInfo);
    verify(mockYumemiWeather.fetchWeather(weatherTargetJson)).called(1);
  });

  for (final error in YumemiWeatherError.values) {
    test('fetchWeather throws $error, if API call fails', () {
      // Arrange
      when(mockYumemiWeather.fetchWeather(weatherTargetJson)).thenThrow(error);

      // Act and Assert
      expect(() => weatherService.fetchWeather(weatherTarget), throwsA(error));
      verify(mockYumemiWeather.fetchWeather(weatherTargetJson)).called(1);
    });
  }

  test('fetchWeather throws FormatException, if API returns invalid data', () {
    // Arrange
    const invalidJson = 'invalid json';
    when(
      mockYumemiWeather.fetchWeather(weatherTargetJson),
    ).thenReturn(invalidJson);

    // Act and Assert
    expect(
      () => weatherService.fetchWeather(weatherTarget),
      throwsA(isA<FormatException>()),
    );
    verify(mockYumemiWeather.fetchWeather(weatherTargetJson)).called(1);
  });
}
