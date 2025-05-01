import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';

import '../../fixtures/weather_fixtures.dart';

void main() {
  // Arrange
  final expectedWeatherInfo = createWeatherInfo();
  final expectedJson = {
    'weather_condition': expectedWeatherInfo.weatherCondition.name,
    'max_temperature': expectedWeatherInfo.maxTemperature,
    'min_temperature': expectedWeatherInfo.minTemperature,
    'date': expectedWeatherInfo.date.toIso8601String(),
  };

  test('toJson returns expected json', () {
    // Act
    final json = expectedWeatherInfo.toJson();

    // Assert
    expect(json, expectedJson);
  });

  test('fromJson returns expected weather info', () {
    // Act
    final weatherInfo = WeatherInfoEntity.fromJson(expectedJson);

    // Assert
    expect(weatherInfo, expectedWeatherInfo);
  });
}
