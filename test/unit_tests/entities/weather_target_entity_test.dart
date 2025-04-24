import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';

import '../../fixtures/weather_fixtures.dart';

void main() {
  // Arrange
  final expectedWeatherTarget = createWeatherTarget();
  final expectedJson = {
    'area': expectedWeatherTarget.area,
    'date': expectedWeatherTarget.date.toIso8601String(),
  };

  test('toJson returns expected json', () {
    // Act
    final json = expectedWeatherTarget.toJson();

    // Assert
    expect(json, expectedJson);
  });

  test('fromJson returns expected weather target', () {
    // Act
    final weatherTarget = WeatherTargetEntity.fromJson(expectedJson);

    // Assert
    expect(weatherTarget, expectedWeatherTarget);
  });
}
