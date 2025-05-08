import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/application/weather/usecase_providers.dart';
import 'package:flutter_training/application/weather/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/domain/common/interfaces/result.dart';
import 'package:flutter_training/domain/weather/constants/weather_condition.dart';
import 'package:flutter_training/domain/weather/constants/weather_error_messages.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/infrastructure/weather/repositories/weather_repository.dart';
import 'package:flutter_training/presentation/common/components/error_dialog.dart';
import 'package:flutter_training/presentation/weather/components/temperature_indicator.dart';
import 'package:flutter_training/presentation/weather/components/weather_action_button.dart';
import 'package:flutter_training/presentation/weather/views/weather_view.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

import '../../fixtures/weather_fixtures.dart';
import 'weather_view_test.mocks.dart';

class _WeatherViewRobot {
  const _WeatherViewRobot(this.tester, {this.overrides});

  final WidgetTester tester;
  final List<Override>? overrides;

  /// Sets up the widget for testing.
  ///
  /// Setting the Surface Size ensures that tapping the buttons works.
  Future<void> setUp() async {
    await tester.binding.setSurfaceSize(const Size(360, 640));
    await tester.pumpWidget(
      ProviderScope(
        overrides: overrides ?? [],
        child: const MaterialApp(home: WeatherView()),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> tearDown() async {
    await tester.binding.setSurfaceSize(null);
  }

  Future<void> tapReloadButton() async {
    await tester.tap(find.widgetWithText(WeatherActionButton, 'Reload'));
    // pumpAndSettleではエラーが発生するため
    await tester.pump(const Duration(milliseconds: 500));
  }

  Future<void> tapCloseButton() async {
    await tester.tap(find.widgetWithText(WeatherActionButton, 'Close'));
    await tester.pumpAndSettle();
  }

  Future<void> tapErrorDialogOkButton() async {
    await tester.tap(find.widgetWithText(ErrorDialog, 'OK'));
    await tester.pumpAndSettle();
  }

  Future<void> checkPlaceholders() async {
    expect(find.byType(Placeholder), findsOneWidget);
    expect(find.widgetWithText(TemperatureIndicator, '** ℃'), findsNWidgets(2));
  }

  Future<void> checkLoadingIndicator(Matcher matcher) async {
    expect(find.byType(CircularProgressIndicator), matcher);
  }

  Future<void> checkWeatherCondition(WeatherCondition weatherCondition) async {
    final assetName = weatherCondition.svgPath;
    final currentWeatherCondition = find.byWidgetPredicate(
      (widget) =>
          widget is SvgPicture &&
          (widget.bytesLoader as SvgAssetLoader).assetName == assetName,
    );

    expect(currentWeatherCondition, findsOneWidget);
  }

  Future<void> checkTemperatures(int minTemperature, int maxTemperature) async {
    expect(
      find.widgetWithText(TemperatureIndicator, '$minTemperature ℃'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(TemperatureIndicator, '$maxTemperature ℃'),
      findsOneWidget,
    );
  }

  Future<void> checkErrorDialog(String message) async {
    expect(find.widgetWithText(ErrorDialog, message), findsOneWidget);
  }
}

@GenerateNiceMocks([MockSpec<WeatherRepository>()])
void main() {
  // Arrange
  late MockWeatherRepository mockWeatherRepository;
  setUp(() => mockWeatherRepository = MockWeatherRepository());
  tearDown(() => reset(mockWeatherRepository));

  final expectedWeatherTarget = createWeatherTarget();

  testWidgets('The WeatherView is initially displayed, '
      'then placeholders for image and temperatures should be displayed', (
    tester,
  ) async {
    // Arrange
    final robot = _WeatherViewRobot(tester);
    await robot.setUp();

    // Act and Assert
    await robot.checkPlaceholders();
    await robot.tearDown();
  });

  testWidgets('When the reload button is tapped, loading indicator appears', (
    tester,
  ) async {
    // Arrange
    final robot = _WeatherViewRobot(tester);
    await robot.setUp();
    await robot.checkLoadingIndicator(findsNothing);

    // Act
    await robot.tapReloadButton();

    // Assert
    await robot.checkLoadingIndicator(findsOneWidget);
    await robot.tearDown();
  });

  for (final weatherCondition in WeatherCondition.values) {
    testWidgets('The API will return $weatherCondition, '
        'when the Reload button is tapped, '
        'then the $weatherCondition image should be displayed', (tester) async {
      // Arrange
      final robot = _WeatherViewRobot(
        tester,
        overrides: [
          reloadWeatherUseCaseProvider.overrideWithValue(
            ReloadWeatherUseCase(mockWeatherRepository),
          ),
        ],
      );
      await robot.setUp();
      final expectedWeatherInfo = createWeatherInfo(
        weatherCondition: weatherCondition,
      );
      final expectedResult = Success(expectedWeatherInfo);
      provideDummy<Result<WeatherInfoEntity>>(expectedResult);
      when(
        mockWeatherRepository.getWeather(expectedWeatherTarget),
      ).thenAnswer((_) => Future.value(expectedResult));

      // Act
      await robot.tapReloadButton();

      // Assert
      await robot.checkWeatherCondition(weatherCondition);
      await robot.tearDown();
    });
  }

  testWidgets('The API will return specific temperatures, '
      'when the Reload button is tapped, '
      'then the corresponding min and max temperatures should be displayed', (
    tester,
  ) async {
    // Arrange
    final robot = _WeatherViewRobot(
      tester,
      overrides: [
        reloadWeatherUseCaseProvider.overrideWithValue(
          ReloadWeatherUseCase(mockWeatherRepository),
        ),
      ],
    );
    await robot.setUp();
    final expectedWeatherInfo = createWeatherInfo();
    final expectedResult = Success(expectedWeatherInfo);
    provideDummy<Result<WeatherInfoEntity>>(expectedResult);
    when(
      mockWeatherRepository.getWeather(expectedWeatherTarget),
    ).thenAnswer((_) => Future.value(expectedResult));

    // Act
    await robot.tapReloadButton();

    // Assert
    await robot.checkTemperatures(
      expectedWeatherInfo.minTemperature,
      expectedWeatherInfo.maxTemperature,
    );
    await robot.tearDown();
  });

  for (final error in YumemiWeatherError.values) {
    testWidgets('The API will return a ${error.name} error, '
        'when the Reload button is tapped, '
        'then an error dialog with the message "${error.message}" '
        'should be displayed.', (tester) async {
      // Arrange
      final robot = _WeatherViewRobot(
        tester,
        overrides: [
          reloadWeatherUseCaseProvider.overrideWithValue(
            ReloadWeatherUseCase(mockWeatherRepository),
          ),
        ],
      );
      await robot.setUp();
      final expectedError = Failure<WeatherInfoEntity>(error.message);
      provideDummy<Result<WeatherInfoEntity>>(expectedError);
      when(
        mockWeatherRepository.getWeather(expectedWeatherTarget),
      ).thenAnswer((_) => Future.value(expectedError));

      // Act
      await robot.tapReloadButton();

      // Assert
      await robot.checkErrorDialog(error.message);
      await robot.tearDown();
    });
  }

  testWidgets('The WeatherView is displayed, when the Close button is tapped, '
      'then the WeatherView should be popped', (tester) async {
    // Arrange
    final robot = _WeatherViewRobot(tester);
    await robot.setUp();
    expect(find.byType(WeatherView), findsOneWidget);

    // Act
    await robot.tapCloseButton();

    // Assert
    expect(find.byType(WeatherView), findsNothing);
    await robot.tearDown();
  });
}
