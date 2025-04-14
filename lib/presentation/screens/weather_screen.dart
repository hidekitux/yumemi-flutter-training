import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/application/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/domain/weather/entities/weather_info_entity.dart';
import 'package:flutter_training/presentation/components/error_dialog.dart';
import 'package:flutter_training/presentation/components/temperature_indicator.dart';
import 'package:flutter_training/presentation/components/weather_action_button.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({
    required ReloadWeatherUseCase reloadWeatherUseCase,
    super.key,
  }) : _reloadWeatherUseCase = reloadWeatherUseCase;

  final ReloadWeatherUseCase _reloadWeatherUseCase;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherInfo? _weatherInfo;

  void _closeWeather() => Navigator.of(context).pop();

  Future<void> _showErrorDialog(String message) => showDialog<void>(
    context: context,
    builder: (context) {
      return ErrorDialog(
        title: 'エラーが発生しました',
        message: message,
        onOkPressed: Navigator.of(context).pop,
      );
    },
  );

  void _reloadWeather() => widget._reloadWeatherUseCase.execute(
    onSuccess: (weatherInfo) {
      setState(() => _weatherInfo = weatherInfo);
    },
    onError: (message) => unawaited(_showErrorDialog(message)),
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
                    _weatherInfo != null
                        ? SvgPicture.asset(
                          _weatherInfo!.weatherCondition.svgPath,
                        )
                        : const Placeholder(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    TemperatureIndicator(
                      label: '${_weatherInfo?.minTemperature ?? '**'} ℃',
                      color: Colors.blue,
                    ),
                    TemperatureIndicator(
                      label: '${_weatherInfo?.maxTemperature ?? '**'} ℃',
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    children: [
                      WeatherActionButton(
                        label: 'Close',
                        onPressed: _closeWeather,
                      ),
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
