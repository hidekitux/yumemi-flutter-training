import 'package:flutter/material.dart';

class WeatherActionButton extends StatelessWidget {
  const WeatherActionButton({
    required String label,
    required void Function() onPressed,
    super.key,
  }) : _onPressed = onPressed,
       _label = label;

  final String _label;
  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: _onPressed,
        style: TextButton.styleFrom(foregroundColor: Colors.blue),
        child: Text(_label, textAlign: TextAlign.center),
      ),
    );
  }
}
