import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/common/mixins/on_layout_built_mixin.dart';
import 'package:flutter_training/presentation/weather/views/weather_view.dart';

class InitialView extends StatefulWidget {
  const InitialView({super.key});

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> with OnLayoutBuiltMixin {
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
