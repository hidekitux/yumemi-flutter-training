import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/application/weather/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/domain/common/constants/common_error_messages.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';
import 'package:flutter_training/presentation/weather/view_models/weather_view_model.dart';
import 'package:flutter_training/presentation/weather/view_states/weather_view_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/weather_fixtures.dart';
import 'weather_view_model_test.mocks.dart';

/// TODO: verifyでgetWeather(expectedWeatherTarget)がエラーになるのを解決する
/// WeatherViewModel内部でDateTime.now()が使われており、時間を変更するとテストが失敗する
@GenerateNiceMocks([MockSpec<WeatherRepository>()])
void main() {
  // Arrange
  late MockWeatherRepository mockWeatherRepository;
  late ReloadWeatherUseCase reloadWeatherUseCase;
  late ProviderContainer container;

  final expectedWeatherTarget = createWeatherTarget();
  final expectedWeatherInfo = createWeatherInfo(
    date: expectedWeatherTarget.date, // 固定された日付を使用
  );
  final expectedErrorMessage = CommonErrorMessages.unknown.message;
  final expectedSuccessResult = Success(expectedWeatherInfo);
  final expectedFailureResult = Failure<WeatherInfoEntity>(
    expectedErrorMessage,
  );
  const placeholderTemperature = '**';

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    reloadWeatherUseCase = ReloadWeatherUseCase(mockWeatherRepository);
    container = ProviderContainer(
      overrides: [
        reloadWeatherUseCaseProvider.overrideWithValue(reloadWeatherUseCase),
      ],
    );
  });

  tearDown(() {
    container.dispose();
  });

  test('weatherViewModelProvider returns WeatherViewState when read', () {
    // Act
    final state = container.read(weatherViewModelProvider);

    // Assert
    expect(state, isA<WeatherViewState>());
  });

  test('reloadWeather updates state successfully', () {
    // Arrange
    final viewModel = container.read(weatherViewModelProvider.notifier);
    provideDummy<Result<WeatherInfoEntity>>(expectedSuccessResult);
    when(
      mockWeatherRepository.getWeather(expectedWeatherTarget),
    ).thenReturn(expectedSuccessResult);

    // Act
    viewModel.reloadWeather();

    // Assert
    expect(viewModel.state.errorMessage, null);
    expect(
      viewModel.state.weatherCondition,
      expectedWeatherInfo.weatherCondition,
    );
    expect(
      viewModel.state.minTemperature,
      expectedWeatherInfo.minTemperature.toString(),
    );
    expect(
      viewModel.state.maxTemperature,
      expectedWeatherInfo.maxTemperature.toString(),
    );
    verify(mockWeatherRepository.getWeather(any)).called(1);
  });

  test('reloadWeather handles error successfully, '
      'and the forecast remains a placeholder', () {
    // Arrange
    final viewModel = container.read(weatherViewModelProvider.notifier);
    provideDummy<Result<WeatherInfoEntity>>(expectedFailureResult);
    when(
      mockWeatherRepository.getWeather(expectedWeatherTarget),
    ).thenReturn(expectedFailureResult);

    // Act
    viewModel.reloadWeather();

    // Assert
    expect(viewModel.state.errorMessage, expectedErrorMessage);
    expect(viewModel.state.weatherCondition, null);
    expect(viewModel.state.minTemperature, placeholderTemperature);
    expect(viewModel.state.maxTemperature, placeholderTemperature);
    verify(mockWeatherRepository.getWeather(any)).called(1);
  });

  test('reloadWeather handles error successfully, after state is updated', () {
    // Arrange
    final viewModel = container.read(weatherViewModelProvider.notifier);
    provideDummy<Result<WeatherInfoEntity>>(expectedSuccessResult);
    when(
      mockWeatherRepository.getWeather(expectedWeatherTarget),
    ).thenReturn(expectedSuccessResult);

    // Act
    viewModel.reloadWeather();

    // Assert
    expect(viewModel.state.errorMessage, null);
    expect(
      viewModel.state.weatherCondition,
      expectedWeatherInfo.weatherCondition,
    );
    expect(
      viewModel.state.minTemperature,
      expectedWeatherInfo.minTemperature.toString(),
    );
    expect(
      viewModel.state.maxTemperature,
      expectedWeatherInfo.maxTemperature.toString(),
    );

    // Arrange
    provideDummy<Result<WeatherInfoEntity>>(expectedFailureResult);
    when(
      mockWeatherRepository.getWeather(expectedWeatherTarget),
    ).thenReturn(expectedFailureResult);

    // Act
    viewModel.reloadWeather();

    // Assert
    expect(viewModel.state.errorMessage, expectedErrorMessage);
    expect(
      viewModel.state.weatherCondition,
      expectedWeatherInfo.weatherCondition,
    );
    expect(
      viewModel.state.minTemperature,
      expectedWeatherInfo.minTemperature.toString(),
    );
    expect(
      viewModel.state.maxTemperature,
      expectedWeatherInfo.maxTemperature.toString(),
    );
    verify(mockWeatherRepository.getWeather(any)).called(2);
  });
}
