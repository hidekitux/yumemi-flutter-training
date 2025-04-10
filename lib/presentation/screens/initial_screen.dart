import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/application/usecases/reload_weather_usecase.dart';
import 'package:flutter_training/presentation/screens/weather_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({
    required ReloadWeatherUseCase reloadWeatherUseCase,
    super.key,
  }) : _reloadWeatherUseCase = reloadWeatherUseCase;

  final ReloadWeatherUseCase _reloadWeatherUseCase;

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  Future<void> _navigateToWeatherScreen() async {
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

    await _navigateToWeatherScreen();
  }

  @override
  void initState() {
    super.initState();
    unawaited(
      WidgetsBinding.instance.endOfFrame.then(
        (_) => _navigateToWeatherScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.green);
  }
}
