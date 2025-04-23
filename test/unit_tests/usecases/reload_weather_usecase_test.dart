import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/application/weather/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/domain/common/constants/common_error_messages.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/constants/weather_error_messages.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';
import 'package:flutter_training/infrastructure/weather/repository_providers.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

import '../../fixtures/weather_fixtures.dart';
import 'reload_weather_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<WeatherRepository>(), MockSpec<YumemiWeather>()])
void main() {
  // Arrange
  final mockWeatherRepository = MockWeatherRepository();
  final reloadWeatherUseCase = ReloadWeatherUseCase(mockWeatherRepository);
  final weatherTarget = createWeatherTarget();

  test('reloadWeatherUseCaseProvider creates ReloadWeatherUseCase', () {
    // Arrange
    final container = ProviderContainer(
      overrides: [
        weatherRepositoryProvider.overrideWithValue(mockWeatherRepository),
      ],
    );

    // Act
    final useCase = container.read(reloadWeatherUseCaseProvider);

    // Assert
    expect(useCase, isA<ReloadWeatherUseCase>());

    // Clean up
    container.dispose();
  });

  test('call returns expected weather info, if API call succeeds', () {
    // Arrange
    final expectedWeatherInfo = createWeatherInfo(date: weatherTarget.date);
    final expectedResult = Success(expectedWeatherInfo);
    provideDummy<Result<WeatherInfoEntity>>(expectedResult);
    when(
      mockWeatherRepository.getWeather(weatherTarget),
    ).thenReturn(expectedResult);

    // Act
    final result = reloadWeatherUseCase.call(weatherTarget);

    // Assert
    expect(result, isA<Success<WeatherInfoEntity>>());
    final weatherInfo = (result as Success<WeatherInfoEntity>).value;
    expect(weatherInfo, expectedWeatherInfo);
    verify(mockWeatherRepository.getWeather(weatherTarget)).called(1);
  });

  for (final error in YumemiWeatherError.values) {
    test('call returns Failure, if API throws $error', () {
      // Arrange
      late Result<WeatherInfoEntity> result;
      final expectedResult = Failure<WeatherInfoEntity>(error.message);
      when(
        mockWeatherRepository.getWeather(weatherTarget),
      ).thenReturn(expectedResult);

      // Act and Assert
      expect(
        () => result = reloadWeatherUseCase.call(weatherTarget),
        returnsNormally,
      );
      expect(
        result,
        isA<Failure<WeatherInfoEntity>>().having(
          (e) => (e as Failure).message,
          'check message',
          error.message,
        ),
      );
      verify(mockWeatherRepository.getWeather(weatherTarget)).called(1);
    });
  }

  test('call returns Failure, if API returns invalid data', () {
    // Arrange
    late Result<WeatherInfoEntity> result;
    final expectedResult = Failure<WeatherInfoEntity>(
      CommonErrorMessages.unknown.message,
    );
    when(
      mockWeatherRepository.getWeather(weatherTarget),
    ).thenReturn(expectedResult);

    // Act and Assert
    expect(
      () => result = reloadWeatherUseCase.call(weatherTarget),
      returnsNormally,
    );
    expect(
      result,
      isA<Failure<WeatherInfoEntity>>().having(
        (e) => (e as Failure).message,
        'check message',
        CommonErrorMessages.unknown.message,
      ),
    );
    verify(mockWeatherRepository.getWeather(weatherTarget)).called(1);
  });
}
