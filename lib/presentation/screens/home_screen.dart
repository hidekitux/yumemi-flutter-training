import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/presentation/components/temperature_indicator.dart';
import 'package:flutter_training/presentation/components/weather_action_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 1 / 2,
          child: Column(
            children: [
              const Spacer(),
              AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset('assets/images/sunny.svg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    TemperatureIndicator(label: '** ℃', color: Colors.blue),
                    TemperatureIndicator(label: '** ℃', color: Colors.red),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    children: [
                      // TODO: Closeボタンを押したときの動作を実装する
                      WeatherActionButton(label: 'Close', onPressed: () {}),
                      // TODO: Reloadボタンを押したときの動作を実装する
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
