// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherScreenState {

 WeatherConditionEntity? get weatherCondition; String get minTemperature; String get maxTemperature;
/// Create a copy of WeatherScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherScreenStateCopyWith<WeatherScreenState> get copyWith => _$WeatherScreenStateCopyWithImpl<WeatherScreenState>(this as WeatherScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherScreenState&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,weatherCondition,minTemperature,maxTemperature);

@override
String toString() {
  return 'WeatherScreenState(weatherCondition: $weatherCondition, minTemperature: $minTemperature, maxTemperature: $maxTemperature)';
}


}

/// @nodoc
abstract mixin class $WeatherScreenStateCopyWith<$Res>  {
  factory $WeatherScreenStateCopyWith(WeatherScreenState value, $Res Function(WeatherScreenState) _then) = _$WeatherScreenStateCopyWithImpl;
@useResult
$Res call({
 WeatherConditionEntity? weatherCondition, String minTemperature, String maxTemperature
});




}
/// @nodoc
class _$WeatherScreenStateCopyWithImpl<$Res>
    implements $WeatherScreenStateCopyWith<$Res> {
  _$WeatherScreenStateCopyWithImpl(this._self, this._then);

  final WeatherScreenState _self;
  final $Res Function(WeatherScreenState) _then;

/// Create a copy of WeatherScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weatherCondition = freezed,Object? minTemperature = null,Object? maxTemperature = null,}) {
  return _then(_self.copyWith(
weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherConditionEntity?,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class WeatherScreenStateInitial implements WeatherScreenState {
  const WeatherScreenStateInitial({this.weatherCondition = null, this.minTemperature = '**', this.maxTemperature = '**'});
  

@override@JsonKey() final  WeatherConditionEntity? weatherCondition;
@override@JsonKey() final  String minTemperature;
@override@JsonKey() final  String maxTemperature;

/// Create a copy of WeatherScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherScreenStateInitialCopyWith<WeatherScreenStateInitial> get copyWith => _$WeatherScreenStateInitialCopyWithImpl<WeatherScreenStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherScreenStateInitial&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,weatherCondition,minTemperature,maxTemperature);

@override
String toString() {
  return 'WeatherScreenState.data(weatherCondition: $weatherCondition, minTemperature: $minTemperature, maxTemperature: $maxTemperature)';
}


}

/// @nodoc
abstract mixin class $WeatherScreenStateInitialCopyWith<$Res> implements $WeatherScreenStateCopyWith<$Res> {
  factory $WeatherScreenStateInitialCopyWith(WeatherScreenStateInitial value, $Res Function(WeatherScreenStateInitial) _then) = _$WeatherScreenStateInitialCopyWithImpl;
@override @useResult
$Res call({
 WeatherConditionEntity? weatherCondition, String minTemperature, String maxTemperature
});




}
/// @nodoc
class _$WeatherScreenStateInitialCopyWithImpl<$Res>
    implements $WeatherScreenStateInitialCopyWith<$Res> {
  _$WeatherScreenStateInitialCopyWithImpl(this._self, this._then);

  final WeatherScreenStateInitial _self;
  final $Res Function(WeatherScreenStateInitial) _then;

/// Create a copy of WeatherScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherCondition = freezed,Object? minTemperature = null,Object? maxTemperature = null,}) {
  return _then(WeatherScreenStateInitial(
weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherConditionEntity?,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WeatherScreenStateError implements WeatherScreenState {
  const WeatherScreenStateError({required this.weatherCondition, required this.minTemperature, required this.maxTemperature, required this.errorMessage});
  

@override final  WeatherConditionEntity? weatherCondition;
@override final  String minTemperature;
@override final  String maxTemperature;
 final  String errorMessage;

/// Create a copy of WeatherScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherScreenStateErrorCopyWith<WeatherScreenStateError> get copyWith => _$WeatherScreenStateErrorCopyWithImpl<WeatherScreenStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherScreenStateError&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,weatherCondition,minTemperature,maxTemperature,errorMessage);

@override
String toString() {
  return 'WeatherScreenState.error(weatherCondition: $weatherCondition, minTemperature: $minTemperature, maxTemperature: $maxTemperature, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $WeatherScreenStateErrorCopyWith<$Res> implements $WeatherScreenStateCopyWith<$Res> {
  factory $WeatherScreenStateErrorCopyWith(WeatherScreenStateError value, $Res Function(WeatherScreenStateError) _then) = _$WeatherScreenStateErrorCopyWithImpl;
@override @useResult
$Res call({
 WeatherConditionEntity? weatherCondition, String minTemperature, String maxTemperature, String errorMessage
});




}
/// @nodoc
class _$WeatherScreenStateErrorCopyWithImpl<$Res>
    implements $WeatherScreenStateErrorCopyWith<$Res> {
  _$WeatherScreenStateErrorCopyWithImpl(this._self, this._then);

  final WeatherScreenStateError _self;
  final $Res Function(WeatherScreenStateError) _then;

/// Create a copy of WeatherScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherCondition = freezed,Object? minTemperature = null,Object? maxTemperature = null,Object? errorMessage = null,}) {
  return _then(WeatherScreenStateError(
weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherConditionEntity?,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
