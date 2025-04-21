import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/config/gen/assets.gen.dart';
import 'package:flutter_training/domain/weather/constants/weather_condition.dart';

void main() {
  // Arrange
  test('fromString returns expected WeatherCondition', () {
    // Act
    final sunny = WeatherCondition.fromString('sunny');
    final cloudy = WeatherCondition.fromString('cloudy');
    final rainy = WeatherCondition.fromString('rainy');

    // Assert
    expect(sunny, WeatherCondition.sunny);
    expect(cloudy, WeatherCondition.cloudy);
    expect(rainy, WeatherCondition.rainy);
  });

  test('fromString throws Exception, if value is invalid', () {
    // Act and Assert
    expect(
      () => WeatherCondition.fromString('invalid'),
      throwsA(isA<Exception>()),
    );
  });

  test('svgPath returns expected svg path', () {
    // Act
    final sunny = WeatherCondition.sunny.svgPath;
    final cloudy = WeatherCondition.cloudy.svgPath;
    final rainy = WeatherCondition.rainy.svgPath;

    // Assert
    expect(sunny, Assets.images.sunny);
    expect(cloudy, Assets.images.cloudy);
    expect(rainy, Assets.images.rainy);
  });
}
