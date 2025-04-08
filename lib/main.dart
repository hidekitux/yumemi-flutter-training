import 'package:flutter/material.dart';
import 'package:flutter_training/presentation/screens/home_screen.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
          secondary: Colors.red,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
