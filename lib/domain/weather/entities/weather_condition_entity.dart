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

  String get svgPath {
    switch (this) {
      case WeatherCondition.sunny:
        return Assets.images.sunny;
      case WeatherCondition.cloudy:
        return Assets.images.cloudy;
      case WeatherCondition.rainy:
        return Assets.images.rainy;
    }
  }
}
