import 'package:flutter_training/config/gen/assets.gen.dart';

enum WeatherCondition {
  sunny,
  cloudy,
  rainy;

  factory WeatherCondition.fromString(String value) {
    for (final item in WeatherCondition.values) {
      if (item.name == value) {
        return item;
      }
    }
    throw Exception('Invalid WeatherCondition: $value');
  }

  String get svgPath => switch (this) {
    WeatherCondition.sunny => Assets.images.sunny,
    WeatherCondition.cloudy => Assets.images.cloudy,
    WeatherCondition.rainy => Assets.images.rainy,
  };
}
