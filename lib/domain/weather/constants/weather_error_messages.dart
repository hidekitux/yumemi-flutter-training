import 'package:flutter_training/domain/common/constants/common_error_messages.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

/*
  When creating an error message
  to be used with something other than YumemiWeatherError,
  the following code is assumed.

  enum WeatherErrorMessages {
    example('example');

    const WeatherErrorMessages(this.message);

    final String message;
  }
 */

extension YumemiWeatherErrorExt on YumemiWeatherError {
  String get message => switch (this) {
    YumemiWeatherError.invalidParameter =>
      CommonErrorMessages.invalidParameter.message,
    YumemiWeatherError.unknown => CommonErrorMessages.unknown.message,
  };
}
