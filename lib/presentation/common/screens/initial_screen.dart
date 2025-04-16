import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/application/weather/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/presentation/common/mixins/on_layout_built_mixin.dart';
import 'package:flutter_training/presentation/weather/screens/weather_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({
    required ReloadWeatherUseCase reloadWeatherUseCase,
    super.key,
  }) : _reloadWeatherUseCase = reloadWeatherUseCase;

  final ReloadWeatherUseCase _reloadWeatherUseCase;

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> with OnLayoutBuiltMixin {
  @override
  Future<void> onLayoutBuilt() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));

    if (!mounted) {
      return;
    }

    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder:
            (context) => WeatherScreen(
              reloadWeatherUseCase: widget._reloadWeatherUseCase,
            ),
      ),
    );

    await onLayoutBuilt();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.green);
  }
}
