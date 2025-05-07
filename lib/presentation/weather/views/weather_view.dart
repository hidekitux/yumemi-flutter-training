import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/domain/weather/constants/weather_condition.dart';
import 'package:flutter_training/domain/weather/entities/weather_target_entity.dart';
import 'package:flutter_training/presentation/common/components/error_dialog.dart';
import 'package:flutter_training/presentation/weather/components/temperature_indicator.dart';
import 'package:flutter_training/presentation/weather/components/weather_action_button.dart';
import 'package:flutter_training/presentation/weather/view_models/weather_view_model.dart';
import 'package:flutter_training/presentation/weather/view_states/weather_view_state.dart';

class WeatherView extends ConsumerWidget {
  const WeatherView({super.key});

  Future<void> _showErrorDialog(BuildContext context, String message) =>
      showDialog<void>(
        context: context,
        builder: (context) {
          return ErrorDialog(
            title: 'エラーが発生しました',
            message: message,
            onOkPressed: Navigator.of(context).pop,
          );
        },
      );

  void _closeWeather(BuildContext context) => Navigator.of(context).pop();

  Future<void> _reloadWeather(WidgetRef ref) => ref
      .read(weatherViewModelProvider.notifier)
      .reloadWeather(WeatherTargetEntity(area: 'Tokyo', date: DateTime.now()));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      weatherViewModelProvider.select((viewModel) => viewModel.error),
      (_, next) async {
        if (next != null && context.mounted) {
          await _showErrorDialog(context, next.toString());
        }
      },
    );

    final viewModel = ref.watch(weatherViewModelProvider);
    final state = viewModel.value ?? const WeatherViewState();
    final (weatherCondition, minTemperature, maxTemperature) = (
      state.weatherCondition,
      state.minTemperature,
      state.maxTemperature,
    );

    return Scaffold(
      body: Stack(
        children: [
          WeatherBody(
            weatherCondition: weatherCondition,
            minTemperature: minTemperature,
            maxTemperature: maxTemperature,
            onClosePressed: () => _closeWeather(context),
            onReloadPressed: () => unawaited(_reloadWeather(ref)),
          ),
          if (viewModel.isLoading) ...[
            const ModalBarrier(dismissible: false, color: Colors.black54),
            const Center(child: CircularProgressIndicator()),
          ],
        ],
      ),
    );
  }
}

class WeatherBody extends StatelessWidget {
  const WeatherBody({
    required WeatherCondition? weatherCondition,
    required String minTemperature,
    required String maxTemperature,
    required VoidCallback onClosePressed,
    required VoidCallback onReloadPressed,
    super.key,
  }) : _weatherCondition = weatherCondition,
       _minTemperature = minTemperature,
       _maxTemperature = maxTemperature,
       _onClosePressed = onClosePressed,
       _onReloadPressed = onReloadPressed;

  final WeatherCondition? _weatherCondition;
  final String _minTemperature;
  final String _maxTemperature;
  final VoidCallback _onClosePressed;
  final VoidCallback _onReloadPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 1 / 2,
        child: Column(
          children: [
            const Spacer(),
            AspectRatio(
              aspectRatio: 1,
              child:
                  _weatherCondition != null
                      ? SvgPicture.asset(_weatherCondition.svgPath)
                      : const Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  TemperatureIndicator(
                    label: '$_minTemperature ℃',
                    color: Colors.blue,
                  ),
                  TemperatureIndicator(
                    label: '$_maxTemperature ℃',
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    WeatherActionButton(
                      label: 'Close',
                      onPressed: _onClosePressed,
                    ),
                    WeatherActionButton(
                      label: 'Reload',
                      onPressed: _onReloadPressed,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
