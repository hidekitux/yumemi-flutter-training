import 'package:flutter_training/config/gen/assets.gen.dart';

enum WeatherConditionEntity {
  sunny,
  cloudy,
  rainy;

  factory WeatherConditionEntity.fromString(String value) {
    for (final item in WeatherConditionEntity.values) {
      if (item.name == value) {
        return item;
      }
    }
    throw Exception('Invalid WeatherCondition: $value');
  }

  String get svgPath => switch (this) {
    WeatherConditionEntity.sunny => Assets.images.sunny,
    WeatherConditionEntity.cloudy => Assets.images.cloudy,
    WeatherConditionEntity.rainy => Assets.images.rainy,
  };
}
