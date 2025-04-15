import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';

class WeatherResponse {
  const WeatherResponse({
    required this.weatherCondition,
    required this.maxTemperature,
    required this.minTemperature,
    required this.date,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final weatherCondition = json['weather_condition'];
    final maxTemperature = int.tryParse(json['max_temperature'].toString());
    final minTemperature = int.tryParse(json['min_temperature'].toString());
    final date = json['date'];

    if (weatherCondition == null ||
        maxTemperature == null ||
        minTemperature == null ||
        date == null) {
      throw const FormatException('Invalid weather data');
    }

    return WeatherResponse(
      weatherCondition: weatherCondition.toString(),
      maxTemperature: maxTemperature,
      minTemperature: minTemperature,
      date: date.toString(),
    );
  }

  final String weatherCondition;
  final int maxTemperature;
  final int minTemperature;
  final String date;

  WeatherInfo toInfo() => WeatherInfo(
    weatherCondition: WeatherCondition.fromString(weatherCondition),
    maxTemperature: maxTemperature,
    minTemperature: minTemperature,
    date: DateTime.parse(date),
  );
}
