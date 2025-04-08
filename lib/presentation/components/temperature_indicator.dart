import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TemperatureIndicator extends StatelessWidget {
  const TemperatureIndicator({
    required this.color,
    required this.label,
    super.key,
  });

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.labelLarge;

    return Expanded(
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: textStyle?.copyWith(color: color),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('color', color));
    properties.add(StringProperty('label', label));
  }
}
