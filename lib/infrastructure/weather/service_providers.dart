import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/infrastructure/weather/api/weather_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'service_providers.g.dart';

@riverpod
WeatherService weatherService(Ref ref) => WeatherService(YumemiWeather());
