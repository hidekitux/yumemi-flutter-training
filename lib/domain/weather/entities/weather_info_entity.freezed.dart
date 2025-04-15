// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherInfo {

  WeatherCondition get weatherCondition;

  int get maxTemperature;

  int get minTemperature;

  DateTime get date;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherInfoCopyWith<WeatherInfo> get copyWith =>
      _$WeatherInfoCopyWithImpl<WeatherInfo>(this as WeatherInfo, _$identity);

  /// Serializes this WeatherInfo to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WeatherInfo &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType, weatherCondition, maxTemperature, minTemperature, date);

  @override
  String toString() {
    return 'WeatherInfo(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date)';
  }


}

/// @nodoc
abstract mixin class $WeatherInfoCopyWith<$Res> {
  factory $WeatherInfoCopyWith(WeatherInfo value,
      $Res Function(WeatherInfo) _then) = _$WeatherInfoCopyWithImpl;

  @useResult
  $Res call({
    WeatherCondition weatherCondition, int maxTemperature, int minTemperature, DateTime date
  });


}

/// @nodoc
class _$WeatherInfoCopyWithImpl<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  _$WeatherInfoCopyWithImpl(this._self, this._then);

  final WeatherInfo _self;
  final $Res Function(WeatherInfo) _then;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? weatherCondition = null, Object? maxTemperature = null, Object? minTemperature = null, Object? date = null,}) {
    return _then(_self.copyWith(
      weatherCondition: null == weatherCondition
          ? _self.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
      as WeatherCondition,
      maxTemperature: null == maxTemperature
          ? _self.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
      as int,
      minTemperature: null == minTemperature
          ? _self.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
      as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
      as DateTime,
    ));
  }

}


/// @nodoc
@JsonSerializable()
class _WeatherInfo implements WeatherInfo {
  const _WeatherInfo(
      {required this.weatherCondition, required this.maxTemperature, required this.minTemperature, required this.date});

  factory _WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoFromJson(json);

  @override final WeatherCondition weatherCondition;
  @override final int maxTemperature;
  @override final int minTemperature;
  @override final DateTime date;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherInfoCopyWith<_WeatherInfo> get copyWith =>
      __$WeatherInfoCopyWithImpl<_WeatherInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherInfoToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WeatherInfo &&
            (identical(other.weatherCondition, weatherCondition) ||
                other.weatherCondition == weatherCondition) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.minTemperature, minTemperature) ||
                other.minTemperature == minTemperature) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(
          runtimeType, weatherCondition, maxTemperature, minTemperature, date);

  @override
  String toString() {
    return 'WeatherInfo(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date)';
  }


}

/// @nodoc
abstract mixin class _$WeatherInfoCopyWith<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  factory _$WeatherInfoCopyWith(_WeatherInfo value,
      $Res Function(_WeatherInfo) _then) = __$WeatherInfoCopyWithImpl;

  @override
  @useResult
  $Res call({
    WeatherCondition weatherCondition, int maxTemperature, int minTemperature, DateTime date
  });


}

/// @nodoc
class __$WeatherInfoCopyWithImpl<$Res>
    implements _$WeatherInfoCopyWith<$Res> {
  __$WeatherInfoCopyWithImpl(this._self, this._then);

  final _WeatherInfo _self;
  final $Res Function(_WeatherInfo) _then;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? weatherCondition = null, Object? maxTemperature = null, Object? minTemperature = null, Object? date = null,}) {
    return _then(_WeatherInfo(
      weatherCondition: null == weatherCondition
          ? _self.weatherCondition
          : weatherCondition // ignore: cast_nullable_to_non_nullable
      as WeatherCondition,
      maxTemperature: null == maxTemperature
          ? _self.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
      as int,
      minTemperature: null == minTemperature
          ? _self.minTemperature
          : minTemperature // ignore: cast_nullable_to_non_nullable
      as int,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
      as DateTime,
    ));
  }


}

// dart format on
