// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherViewState {

 String? get minTemperature; String? get maxTemperature; WeatherCondition? get weatherCondition;
/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherViewStateCopyWith<WeatherViewState> get copyWith => _$WeatherViewStateCopyWithImpl<WeatherViewState>(this as WeatherViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherViewState&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition));
}


@override
int get hashCode => Object.hash(runtimeType,minTemperature,maxTemperature,weatherCondition);

@override
String toString() {
  return 'WeatherViewState(minTemperature: $minTemperature, maxTemperature: $maxTemperature, weatherCondition: $weatherCondition)';
}


}

/// @nodoc
abstract mixin class $WeatherViewStateCopyWith<$Res>  {
  factory $WeatherViewStateCopyWith(WeatherViewState value, $Res Function(WeatherViewState) _then) = _$WeatherViewStateCopyWithImpl;
@useResult
$Res call({
 String? minTemperature, String? maxTemperature, WeatherCondition? weatherCondition
});




}
/// @nodoc
class _$WeatherViewStateCopyWithImpl<$Res>
    implements $WeatherViewStateCopyWith<$Res> {
  _$WeatherViewStateCopyWithImpl(this._self, this._then);

  final WeatherViewState _self;
  final $Res Function(WeatherViewState) _then;

/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minTemperature = freezed,Object? maxTemperature = freezed,Object? weatherCondition = freezed,}) {
  return _then(_self.copyWith(
minTemperature: freezed == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String?,maxTemperature: freezed == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String?,weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherCondition?,
  ));
}

}


/// @nodoc


class _WeatherViewState implements WeatherViewState {
  const _WeatherViewState({this.minTemperature, this.maxTemperature, this.weatherCondition});
  

@override final  String? minTemperature;
@override final  String? maxTemperature;
@override final  WeatherCondition? weatherCondition;

/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherViewStateCopyWith<_WeatherViewState> get copyWith => __$WeatherViewStateCopyWithImpl<_WeatherViewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherViewState&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition));
}


@override
int get hashCode => Object.hash(runtimeType,minTemperature,maxTemperature,weatherCondition);

@override
String toString() {
  return 'WeatherViewState(minTemperature: $minTemperature, maxTemperature: $maxTemperature, weatherCondition: $weatherCondition)';
}


}

/// @nodoc
abstract mixin class _$WeatherViewStateCopyWith<$Res> implements $WeatherViewStateCopyWith<$Res> {
  factory _$WeatherViewStateCopyWith(_WeatherViewState value, $Res Function(_WeatherViewState) _then) = __$WeatherViewStateCopyWithImpl;
@override @useResult
$Res call({
 String? minTemperature, String? maxTemperature, WeatherCondition? weatherCondition
});




}
/// @nodoc
class __$WeatherViewStateCopyWithImpl<$Res>
    implements _$WeatherViewStateCopyWith<$Res> {
  __$WeatherViewStateCopyWithImpl(this._self, this._then);

  final _WeatherViewState _self;
  final $Res Function(_WeatherViewState) _then;

/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minTemperature = freezed,Object? maxTemperature = freezed,Object? weatherCondition = freezed,}) {
  return _then(_WeatherViewState(
minTemperature: freezed == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String?,maxTemperature: freezed == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String?,weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherCondition?,
  ));
}


}

// dart format on
