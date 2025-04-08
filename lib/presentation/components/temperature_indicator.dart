import 'package:flutter/material.dart';

class TemperatureIndicator extends StatelessWidget {
  const TemperatureIndicator({
    required Color color,
    required String label,
    super.key,
  }) : _label = label,
       _color = color;

  final Color _color;
  final String _label;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelLarge;

    return Expanded(
      child: Text(
        _label,
        textAlign: TextAlign.center,
        style: textStyle?.copyWith(color: _color),
      ),
    );
  }
}
