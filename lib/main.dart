import 'package:flutter/material.dart';
import 'package:flutter_training/application/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';
import 'package:flutter_training/presentation/screens/home_screen.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

void main() {
  final yumemiWeather = YumemiWeather();
  final weatherService = WeatherServiceImpl(yumemiWeather);
  final weatherRepository = WeatherRepositoryImpl(weatherService);
  final reloadWeatherUseCase = ReloadWeatherUseCase(weatherRepository);

  runApp(WeatherApp(reloadWeatherUseCase: reloadWeatherUseCase));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({
    required ReloadWeatherUseCase reloadWeatherUseCase,
    super.key,
  }) : _reloadWeatherUseCase = reloadWeatherUseCase;

  final ReloadWeatherUseCase _reloadWeatherUseCase;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(reloadWeatherUseCase: _reloadWeatherUseCase),
    );
  }
}
