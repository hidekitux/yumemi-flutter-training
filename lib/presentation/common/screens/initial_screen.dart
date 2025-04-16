import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/common/mixins/on_layout_built_mixin.dart';
import 'package:flutter_training/presentation/weather/screens/weather_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

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
      MaterialPageRoute<void>(builder: (context) => const WeatherScreen()),
    );

    await onLayoutBuilt();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.green);
  }
}
