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

 WeatherCondition? get weatherCondition; String get minTemperature; String get maxTemperature;
/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherViewStateCopyWith<WeatherViewState> get copyWith => _$WeatherViewStateCopyWithImpl<WeatherViewState>(this as WeatherViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherViewState&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,weatherCondition,minTemperature,maxTemperature);

@override
String toString() {
  return 'WeatherViewState(weatherCondition: $weatherCondition, minTemperature: $minTemperature, maxTemperature: $maxTemperature)';
}


}

/// @nodoc
abstract mixin class $WeatherViewStateCopyWith<$Res>  {
  factory $WeatherViewStateCopyWith(WeatherViewState value, $Res Function(WeatherViewState) _then) = _$WeatherViewStateCopyWithImpl;
@useResult
$Res call({
 WeatherCondition? weatherCondition, String minTemperature, String maxTemperature
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
@pragma('vm:prefer-inline') @override $Res call({Object? weatherCondition = freezed,Object? minTemperature = null,Object? maxTemperature = null,}) {
  return _then(_self.copyWith(
weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherCondition?,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class WeatherViewStateInitial implements WeatherViewState {
  const WeatherViewStateInitial({this.weatherCondition = null, this.minTemperature = '**', this.maxTemperature = '**'});
  

@override@JsonKey() final  WeatherCondition? weatherCondition;
@override@JsonKey() final  String minTemperature;
@override@JsonKey() final  String maxTemperature;

/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherViewStateInitialCopyWith<WeatherViewStateInitial> get copyWith => _$WeatherViewStateInitialCopyWithImpl<WeatherViewStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherViewStateInitial&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,weatherCondition,minTemperature,maxTemperature);

@override
String toString() {
  return 'WeatherViewState.data(weatherCondition: $weatherCondition, minTemperature: $minTemperature, maxTemperature: $maxTemperature)';
}


}

/// @nodoc
abstract mixin class $WeatherViewStateInitialCopyWith<$Res> implements $WeatherViewStateCopyWith<$Res> {
  factory $WeatherViewStateInitialCopyWith(WeatherViewStateInitial value, $Res Function(WeatherViewStateInitial) _then) = _$WeatherViewStateInitialCopyWithImpl;
@override @useResult
$Res call({
 WeatherCondition? weatherCondition, String minTemperature, String maxTemperature
});




}
/// @nodoc
class _$WeatherViewStateInitialCopyWithImpl<$Res>
    implements $WeatherViewStateInitialCopyWith<$Res> {
  _$WeatherViewStateInitialCopyWithImpl(this._self, this._then);

  final WeatherViewStateInitial _self;
  final $Res Function(WeatherViewStateInitial) _then;

/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherCondition = freezed,Object? minTemperature = null,Object? maxTemperature = null,}) {
  return _then(WeatherViewStateInitial(
weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherCondition?,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WeatherViewStateError implements WeatherViewState {
  const WeatherViewStateError({required this.weatherCondition, required this.minTemperature, required this.maxTemperature, required this.errorMessage});
  

@override final  WeatherCondition? weatherCondition;
@override final  String minTemperature;
@override final  String maxTemperature;
 final  String errorMessage;

/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherViewStateErrorCopyWith<WeatherViewStateError> get copyWith => _$WeatherViewStateErrorCopyWithImpl<WeatherViewStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherViewStateError&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,weatherCondition,minTemperature,maxTemperature,errorMessage);

@override
String toString() {
  return 'WeatherViewState.error(weatherCondition: $weatherCondition, minTemperature: $minTemperature, maxTemperature: $maxTemperature, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $WeatherViewStateErrorCopyWith<$Res> implements $WeatherViewStateCopyWith<$Res> {
  factory $WeatherViewStateErrorCopyWith(WeatherViewStateError value, $Res Function(WeatherViewStateError) _then) = _$WeatherViewStateErrorCopyWithImpl;
@override @useResult
$Res call({
 WeatherCondition? weatherCondition, String minTemperature, String maxTemperature, String errorMessage
});




}
/// @nodoc
class _$WeatherViewStateErrorCopyWithImpl<$Res>
    implements $WeatherViewStateErrorCopyWith<$Res> {
  _$WeatherViewStateErrorCopyWithImpl(this._self, this._then);

  final WeatherViewStateError _self;
  final $Res Function(WeatherViewStateError) _then;

/// Create a copy of WeatherViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherCondition = freezed,Object? minTemperature = null,Object? maxTemperature = null,Object? errorMessage = null,}) {
  return _then(WeatherViewStateError(
weatherCondition: freezed == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherCondition?,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as String,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as String,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
