import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';
import 'package:flutter_training/infrastructure/weather/service_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_providers.g.dart';

@riverpod
WeatherRepository weatherRepository(Ref ref) =>
    WeatherRepository(ref.watch(weatherServiceProvider));
