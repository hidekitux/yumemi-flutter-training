// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_target_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherTargetEntity {

 String get area; DateTime get date;
/// Create a copy of WeatherTargetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherTargetEntityCopyWith<WeatherTargetEntity> get copyWith => _$WeatherTargetEntityCopyWithImpl<WeatherTargetEntity>(this as WeatherTargetEntity, _$identity);

  /// Serializes this WeatherTargetEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherTargetEntity&&(identical(other.area, area) || other.area == area)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,date);

@override
String toString() {
  return 'WeatherTargetEntity(area: $area, date: $date)';
}


}

/// @nodoc
abstract mixin class $WeatherTargetEntityCopyWith<$Res>  {
  factory $WeatherTargetEntityCopyWith(WeatherTargetEntity value, $Res Function(WeatherTargetEntity) _then) = _$WeatherTargetEntityCopyWithImpl;
@useResult
$Res call({
 String area, DateTime date
});




}
/// @nodoc
class _$WeatherTargetEntityCopyWithImpl<$Res>
    implements $WeatherTargetEntityCopyWith<$Res> {
  _$WeatherTargetEntityCopyWithImpl(this._self, this._then);

  final WeatherTargetEntity _self;
  final $Res Function(WeatherTargetEntity) _then;

/// Create a copy of WeatherTargetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? area = null,Object? date = null,}) {
  return _then(_self.copyWith(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherTargetEntity implements WeatherTargetEntity {
  const _WeatherTargetEntity({required this.area, required this.date});
  factory _WeatherTargetEntity.fromJson(Map<String, dynamic> json) => _$WeatherTargetEntityFromJson(json);

@override final  String area;
@override final  DateTime date;

/// Create a copy of WeatherTargetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherTargetEntityCopyWith<_WeatherTargetEntity> get copyWith => __$WeatherTargetEntityCopyWithImpl<_WeatherTargetEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherTargetEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherTargetEntity&&(identical(other.area, area) || other.area == area)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,date);

@override
String toString() {
  return 'WeatherTargetEntity(area: $area, date: $date)';
}


}

/// @nodoc
abstract mixin class _$WeatherTargetEntityCopyWith<$Res> implements $WeatherTargetEntityCopyWith<$Res> {
  factory _$WeatherTargetEntityCopyWith(_WeatherTargetEntity value, $Res Function(_WeatherTargetEntity) _then) = __$WeatherTargetEntityCopyWithImpl;
@override @useResult
$Res call({
 String area, DateTime date
});




}
/// @nodoc
class __$WeatherTargetEntityCopyWithImpl<$Res>
    implements _$WeatherTargetEntityCopyWith<$Res> {
  __$WeatherTargetEntityCopyWithImpl(this._self, this._then);

  final _WeatherTargetEntity _self;
  final $Res Function(_WeatherTargetEntity) _then;

/// Create a copy of WeatherTargetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? area = null,Object? date = null,}) {
  return _then(_WeatherTargetEntity(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
