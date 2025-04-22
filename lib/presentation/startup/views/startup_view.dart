import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/startup/mixins/on_layout_built_mixin.dart';
import 'package:flutter_training/presentation/weather/views/weather_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> with OnLayoutBuiltMixin {
  @override
  Future<void> onLayoutBuilt() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));

    if (!mounted) {
      return;
    }

    await Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (context) => const WeatherView()));

    await onLayoutBuilt();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.green);
  }
}
