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
mixin _$WeatherInfoEntity {

 WeatherCondition get weatherCondition; int get maxTemperature; int get minTemperature; DateTime get date;
/// Create a copy of WeatherInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherInfoEntityCopyWith<WeatherInfoEntity> get copyWith => _$WeatherInfoEntityCopyWithImpl<WeatherInfoEntity>(this as WeatherInfoEntity, _$identity);

  /// Serializes this WeatherInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherInfoEntity&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weatherCondition,maxTemperature,minTemperature,date);

@override
String toString() {
  return 'WeatherInfoEntity(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date)';
}


}

/// @nodoc
abstract mixin class $WeatherInfoEntityCopyWith<$Res>  {
  factory $WeatherInfoEntityCopyWith(WeatherInfoEntity value, $Res Function(WeatherInfoEntity) _then) = _$WeatherInfoEntityCopyWithImpl;
@useResult
$Res call({
 WeatherCondition weatherCondition, int maxTemperature, int minTemperature, DateTime date
});




}
/// @nodoc
class _$WeatherInfoEntityCopyWithImpl<$Res>
    implements $WeatherInfoEntityCopyWith<$Res> {
  _$WeatherInfoEntityCopyWithImpl(this._self, this._then);

  final WeatherInfoEntity _self;
  final $Res Function(WeatherInfoEntity) _then;

/// Create a copy of WeatherInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weatherCondition = null,Object? maxTemperature = null,Object? minTemperature = null,Object? date = null,}) {
  return _then(_self.copyWith(
weatherCondition: null == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherCondition,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as int,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherInfoEntity implements WeatherInfoEntity {
  const _WeatherInfoEntity({required this.weatherCondition, required this.maxTemperature, required this.minTemperature, required this.date});
  factory _WeatherInfoEntity.fromJson(Map<String, dynamic> json) => _$WeatherInfoEntityFromJson(json);

@override final  WeatherCondition weatherCondition;
@override final  int maxTemperature;
@override final  int minTemperature;
@override final  DateTime date;

/// Create a copy of WeatherInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherInfoEntityCopyWith<_WeatherInfoEntity> get copyWith => __$WeatherInfoEntityCopyWithImpl<_WeatherInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherInfoEntity&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weatherCondition,maxTemperature,minTemperature,date);

@override
String toString() {
  return 'WeatherInfoEntity(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date)';
}


}

/// @nodoc
abstract mixin class _$WeatherInfoEntityCopyWith<$Res> implements $WeatherInfoEntityCopyWith<$Res> {
  factory _$WeatherInfoEntityCopyWith(_WeatherInfoEntity value, $Res Function(_WeatherInfoEntity) _then) = __$WeatherInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 WeatherCondition weatherCondition, int maxTemperature, int minTemperature, DateTime date
});




}
/// @nodoc
class __$WeatherInfoEntityCopyWithImpl<$Res>
    implements _$WeatherInfoEntityCopyWith<$Res> {
  __$WeatherInfoEntityCopyWithImpl(this._self, this._then);

  final _WeatherInfoEntity _self;
  final $Res Function(_WeatherInfoEntity) _then;

/// Create a copy of WeatherInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherCondition = null,Object? maxTemperature = null,Object? minTemperature = null,Object? date = null,}) {
  return _then(_WeatherInfoEntity(
weatherCondition: null == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherCondition,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as int,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
