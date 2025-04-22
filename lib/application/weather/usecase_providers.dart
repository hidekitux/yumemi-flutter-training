import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/application/weather/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/infrastructure/weather/repository_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecase_providers.g.dart';

@riverpod
ReloadWeatherUseCase reloadWeatherUseCase(Ref ref) =>
    ReloadWeatherUseCase(ref.watch(weatherRepositoryProvider));
