import 'package:flutter/material.dart';
import 'package:flutter_training/application/usecases/reload_weather_usecase.dart';

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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.green);
  }
}
