import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/components/temperature_indicator.dart';
import 'package:flutter_training/presentation/components/weather_action_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 1 / 2,
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  const AspectRatio(aspectRatio: 1, child: Placeholder()),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        TemperatureIndicator(color: colorScheme.primary),
                        TemperatureIndicator(color: colorScheme.secondary),
                      ],
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    children: [
                      WeatherActionButton(label: 'Close', onPressed: () {}),
                      WeatherActionButton(label: 'Reload', onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
