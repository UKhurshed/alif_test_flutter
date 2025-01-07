// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeoResponseObject _$GeoResponseObjectFromJson(Map<String, dynamic> json) {
  return _GeoResponseObject.fromJson(json);
}

/// @nodoc
mixin _$GeoResponseObject {
  @JsonKey(name: 'lat')
  String get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lng')
  String get lng => throw _privateConstructorUsedError;

  /// Serializes this GeoResponseObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoResponseObjectCopyWith<GeoResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoResponseObjectCopyWith<$Res> {
  factory $GeoResponseObjectCopyWith(
          GeoResponseObject value, $Res Function(GeoResponseObject) then) =
      _$GeoResponseObjectCopyWithImpl<$Res, GeoResponseObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') String lat, @JsonKey(name: 'lng') String lng});
}

/// @nodoc
class _$GeoResponseObjectCopyWithImpl<$Res, $Val extends GeoResponseObject>
    implements $GeoResponseObjectCopyWith<$Res> {
  _$GeoResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoResponseObjectImplCopyWith<$Res>
    implements $GeoResponseObjectCopyWith<$Res> {
  factory _$$GeoResponseObjectImplCopyWith(_$GeoResponseObjectImpl value,
          $Res Function(_$GeoResponseObjectImpl) then) =
      __$$GeoResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') String lat, @JsonKey(name: 'lng') String lng});
}

/// @nodoc
class __$$GeoResponseObjectImplCopyWithImpl<$Res>
    extends _$GeoResponseObjectCopyWithImpl<$Res, _$GeoResponseObjectImpl>
    implements _$$GeoResponseObjectImplCopyWith<$Res> {
  __$$GeoResponseObjectImplCopyWithImpl(_$GeoResponseObjectImpl _value,
      $Res Function(_$GeoResponseObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$GeoResponseObjectImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoResponseObjectImpl implements _GeoResponseObject {
  const _$GeoResponseObjectImpl(
      {@JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lng') required this.lng});

  factory _$GeoResponseObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoResponseObjectImplFromJson(json);

  @override
  @JsonKey(name: 'lat')
  final String lat;
  @override
  @JsonKey(name: 'lng')
  final String lng;

  @override
  String toString() {
    return 'GeoResponseObject(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoResponseObjectImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  /// Create a copy of GeoResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoResponseObjectImplCopyWith<_$GeoResponseObjectImpl> get copyWith =>
      __$$GeoResponseObjectImplCopyWithImpl<_$GeoResponseObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoResponseObjectImplToJson(
      this,
    );
  }
}

abstract class _GeoResponseObject implements GeoResponseObject {
  const factory _GeoResponseObject(
          {@JsonKey(name: 'lat') required final String lat,
          @JsonKey(name: 'lng') required final String lng}) =
      _$GeoResponseObjectImpl;

  factory _GeoResponseObject.fromJson(Map<String, dynamic> json) =
      _$GeoResponseObjectImpl.fromJson;

  @override
  @JsonKey(name: 'lat')
  String get lat;
  @override
  @JsonKey(name: 'lng')
  String get lng;

  /// Create a copy of GeoResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoResponseObjectImplCopyWith<_$GeoResponseObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
