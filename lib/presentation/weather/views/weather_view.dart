import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/presentation/common/components/error_dialog.dart';
import 'package:flutter_training/presentation/weather/components/temperature_indicator.dart';
import 'package:flutter_training/presentation/weather/components/weather_action_button.dart';
import 'package:flutter_training/presentation/weather/view_models/weather_view_model.dart';

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(weatherViewModelProvider.select((e) => e.errorMessage), (
      _,
      next,
    ) async {
      /// errorMessageがnullでなければエラーダイアログを表示する
      if (next != null) {
        await _showErrorDialog(context, next);
      }
    });

    final viewModel = ref.watch(weatherViewModelProvider);

    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 1 / 2,
          child: Column(
            children: [
              const Spacer(),
              AspectRatio(
                aspectRatio: 1,
                child:
                    viewModel.weatherCondition != null
                        ? SvgPicture.asset(viewModel.weatherCondition!.svgPath)
                        : const Placeholder(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    TemperatureIndicator(
                      label: '${viewModel.minTemperature} ℃',
                      color: Colors.blue,
                    ),
                    TemperatureIndicator(
                      label: '${viewModel.maxTemperature} ℃',
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
                        onPressed: () => _closeWeather(context),
                      ),
                      WeatherActionButton(
                        label: 'Reload',
                        onPressed:
                            () =>
                                ref
                                    .read(weatherViewModelProvider.notifier)
                                    .reloadWeather(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
