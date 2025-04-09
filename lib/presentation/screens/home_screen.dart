import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/application/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/domain/weather/entities/weather_condition_entity.dart';
import 'package:flutter_training/presentation/components/temperature_indicator.dart';
import 'package:flutter_training/presentation/components/weather_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    required ReloadWeatherUseCase reloadWeatherUseCase,
    super.key,
  }) : _reloadWeatherUseCase = reloadWeatherUseCase;

  final ReloadWeatherUseCase _reloadWeatherUseCase;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherCondition? _weatherCondition;

  @override
  void initState() {
    super.initState();
  }

  void _reloadWeather() => widget._reloadWeatherUseCase.execute(
    onSuccess: (weatherCondition) {
      setState(() => _weatherCondition = weatherCondition);
    },
    // TODO: エラーハンドリングを実装する
    onError: (_) {},
  );

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
                child:
                    _weatherCondition != null
                        ? SvgPicture.asset(_weatherCondition!.svgPath)
                        : const Placeholder(),
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
                      WeatherActionButton(
                        label: 'Reload',
                        onPressed: _reloadWeather,
                      ),
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
