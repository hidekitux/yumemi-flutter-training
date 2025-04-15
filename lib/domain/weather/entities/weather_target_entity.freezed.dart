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
mixin _$WeatherTarget {

  String get area;

  DateTime get date;

  /// Create a copy of WeatherTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherTargetCopyWith<WeatherTarget> get copyWith =>
      _$WeatherTargetCopyWithImpl<WeatherTarget>(
          this as WeatherTarget, _$identity);

  /// Serializes this WeatherTarget to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WeatherTarget &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, date);

  @override
  String toString() {
    return 'WeatherTarget(area: $area, date: $date)';
  }


}

/// @nodoc
abstract mixin class $WeatherTargetCopyWith<$Res> {
  factory $WeatherTargetCopyWith(WeatherTarget value,
      $Res Function(WeatherTarget) _then) = _$WeatherTargetCopyWithImpl;

  @useResult
  $Res call({
    String area, DateTime date
  });


}

/// @nodoc
class _$WeatherTargetCopyWithImpl<$Res>
    implements $WeatherTargetCopyWith<$Res> {
  _$WeatherTargetCopyWithImpl(this._self, this._then);

  final WeatherTarget _self;
  final $Res Function(WeatherTarget) _then;

  /// Create a copy of WeatherTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? area = null, Object? date = null,}) {
    return _then(_self.copyWith(
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
      as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
      as DateTime,
    ));
  }

}


/// @nodoc
@JsonSerializable()
class _WeatherTarget implements WeatherTarget {
  const _WeatherTarget({required this.area, required this.date});

  factory _WeatherTarget.fromJson(Map<String, dynamic> json) =>
      _$WeatherTargetFromJson(json);

  @override final String area;
  @override final DateTime date;

  /// Create a copy of WeatherTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherTargetCopyWith<_WeatherTarget> get copyWith =>
      __$WeatherTargetCopyWithImpl<_WeatherTarget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherTargetToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WeatherTarget &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, date);

  @override
  String toString() {
    return 'WeatherTarget(area: $area, date: $date)';
  }


}

/// @nodoc
abstract mixin class _$WeatherTargetCopyWith<$Res>
    implements $WeatherTargetCopyWith<$Res> {
  factory _$WeatherTargetCopyWith(_WeatherTarget value,
      $Res Function(_WeatherTarget) _then) = __$WeatherTargetCopyWithImpl;

  @override
  @useResult
  $Res call({
    String area, DateTime date
  });


}

/// @nodoc
class __$WeatherTargetCopyWithImpl<$Res>
    implements _$WeatherTargetCopyWith<$Res> {
  __$WeatherTargetCopyWithImpl(this._self, this._then);

  final _WeatherTarget _self;
  final $Res Function(_WeatherTarget) _then;

  /// Create a copy of WeatherTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? area = null, Object? date = null,}) {
    return _then(_WeatherTarget(
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
      as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
      as DateTime,
    ));
  }


}

// dart format on
