// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressResponseObject _$AddressResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _AddressResponseObject.fromJson(json);
}

/// @nodoc
mixin _$AddressResponseObject {
  @JsonKey(name: 'street')
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'suite')
  String get suite => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'zipcode')
  String get zipcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'geo')
  GeoResponseObject get geo => throw _privateConstructorUsedError;

  /// Serializes this AddressResponseObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressResponseObjectCopyWith<AddressResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseObjectCopyWith<$Res> {
  factory $AddressResponseObjectCopyWith(AddressResponseObject value,
          $Res Function(AddressResponseObject) then) =
      _$AddressResponseObjectCopyWithImpl<$Res, AddressResponseObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'street') String street,
      @JsonKey(name: 'suite') String suite,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'zipcode') String zipcode,
      @JsonKey(name: 'geo') GeoResponseObject geo});

  $GeoResponseObjectCopyWith<$Res> get geo;
}

/// @nodoc
class _$AddressResponseObjectCopyWithImpl<$Res,
        $Val extends AddressResponseObject>
    implements $AddressResponseObjectCopyWith<$Res> {
  _$AddressResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
    Object? geo = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: null == geo
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeoResponseObject,
    ) as $Val);
  }

  /// Create a copy of AddressResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoResponseObjectCopyWith<$Res> get geo {
    return $GeoResponseObjectCopyWith<$Res>(_value.geo, (value) {
      return _then(_value.copyWith(geo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressResponseObjectImplCopyWith<$Res>
    implements $AddressResponseObjectCopyWith<$Res> {
  factory _$$AddressResponseObjectImplCopyWith(
          _$AddressResponseObjectImpl value,
          $Res Function(_$AddressResponseObjectImpl) then) =
      __$$AddressResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'street') String street,
      @JsonKey(name: 'suite') String suite,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'zipcode') String zipcode,
      @JsonKey(name: 'geo') GeoResponseObject geo});

  @override
  $GeoResponseObjectCopyWith<$Res> get geo;
}

/// @nodoc
class __$$AddressResponseObjectImplCopyWithImpl<$Res>
    extends _$AddressResponseObjectCopyWithImpl<$Res,
        _$AddressResponseObjectImpl>
    implements _$$AddressResponseObjectImplCopyWith<$Res> {
  __$$AddressResponseObjectImplCopyWithImpl(_$AddressResponseObjectImpl _value,
      $Res Function(_$AddressResponseObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
    Object? geo = null,
  }) {
    return _then(_$AddressResponseObjectImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: null == geo
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as GeoResponseObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressResponseObjectImpl implements _AddressResponseObject {
  const _$AddressResponseObjectImpl(
      {@JsonKey(name: 'street') required this.street,
      @JsonKey(name: 'suite') required this.suite,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'zipcode') required this.zipcode,
      @JsonKey(name: 'geo') required this.geo});

  factory _$AddressResponseObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressResponseObjectImplFromJson(json);

  @override
  @JsonKey(name: 'street')
  final String street;
  @override
  @JsonKey(name: 'suite')
  final String suite;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'zipcode')
  final String zipcode;
  @override
  @JsonKey(name: 'geo')
  final GeoResponseObject geo;

  @override
  String toString() {
    return 'AddressResponseObject(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressResponseObjectImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.geo, geo) || other.geo == geo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, suite, city, zipcode, geo);

  /// Create a copy of AddressResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressResponseObjectImplCopyWith<_$AddressResponseObjectImpl>
      get copyWith => __$$AddressResponseObjectImplCopyWithImpl<
          _$AddressResponseObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressResponseObjectImplToJson(
      this,
    );
  }
}

abstract class _AddressResponseObject implements AddressResponseObject {
  const factory _AddressResponseObject(
          {@JsonKey(name: 'street') required final String street,
          @JsonKey(name: 'suite') required final String suite,
          @JsonKey(name: 'city') required final String city,
          @JsonKey(name: 'zipcode') required final String zipcode,
          @JsonKey(name: 'geo') required final GeoResponseObject geo}) =
      _$AddressResponseObjectImpl;

  factory _AddressResponseObject.fromJson(Map<String, dynamic> json) =
      _$AddressResponseObjectImpl.fromJson;

  @override
  @JsonKey(name: 'street')
  String get street;
  @override
  @JsonKey(name: 'suite')
  String get suite;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'zipcode')
  String get zipcode;
  @override
  @JsonKey(name: 'geo')
  GeoResponseObject get geo;

  /// Create a copy of AddressResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressResponseObjectImplCopyWith<_$AddressResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
