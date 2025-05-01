import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/presentation/startup/views/startup_view.dart';
import 'package:flutter_training/presentation/weather/views/weather_view.dart';

void main() {
  testWidgets('The StartupView is displayed, '
      'then pushes WeatherView after 500ms', (tester) async {
    // Arrange
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: StartupView())),
    );

    // Act and Assert
    expect(find.byType(StartupView), findsOneWidget);
    expect(find.byType(WeatherView), findsNothing);

    await tester.pumpAndSettle(const Duration(milliseconds: 500));

    expect(find.byType(WeatherView), findsOneWidget);
    expect(find.byType(StartupView), findsNothing);
  });
}
