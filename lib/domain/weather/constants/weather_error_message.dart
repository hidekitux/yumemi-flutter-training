import 'package:flutter_training/domain/common/constants/common_error_messages.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

extension YumemiWeatherErrorExt on YumemiWeatherError {
  String get message {
    return switch (this) {
      YumemiWeatherError.invalidParameter =>
        ErrorMessages.invalidParameter.message,
      YumemiWeatherError.unknown => ErrorMessages.unknown.message,
    };
  }
}
