import 'package:flutter/material.dart';

class TemperatureIndicator extends StatelessWidget {
  const TemperatureIndicator({
    required Color color,
    String? value,
    String? suffix,
    super.key,
  }) : _color = color,
       _value = value ?? '**',
       _suffix = suffix ?? '℃';

  final Color _color;
  final String _value;
  final String _suffix;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelLarge;

    return Expanded(
      child: Text(
        '$_value $_suffix',
        textAlign: TextAlign.center,
        style: textStyle?.copyWith(color: _color),
      ),
    );
  }
}
