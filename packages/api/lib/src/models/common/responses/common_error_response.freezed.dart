// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommonErrorResponse _$CommonErrorResponseFromJson(Map<String, dynamic> json) {
  return _CommonErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$CommonErrorResponse {
  @JsonKey(name: 'detail')
  String get detail => throw _privateConstructorUsedError;

  /// Serializes this CommonErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommonErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonErrorResponseCopyWith<CommonErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonErrorResponseCopyWith<$Res> {
  factory $CommonErrorResponseCopyWith(
          CommonErrorResponse value, $Res Function(CommonErrorResponse) then) =
      _$CommonErrorResponseCopyWithImpl<$Res, CommonErrorResponse>;
  @useResult
  $Res call({@JsonKey(name: 'detail') String detail});
}

/// @nodoc
class _$CommonErrorResponseCopyWithImpl<$Res, $Val extends CommonErrorResponse>
    implements $CommonErrorResponseCopyWith<$Res> {
  _$CommonErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonErrorResponseImplCopyWith<$Res>
    implements $CommonErrorResponseCopyWith<$Res> {
  factory _$$CommonErrorResponseImplCopyWith(_$CommonErrorResponseImpl value,
          $Res Function(_$CommonErrorResponseImpl) then) =
      __$$CommonErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'detail') String detail});
}

/// @nodoc
class __$$CommonErrorResponseImplCopyWithImpl<$Res>
    extends _$CommonErrorResponseCopyWithImpl<$Res, _$CommonErrorResponseImpl>
    implements _$$CommonErrorResponseImplCopyWith<$Res> {
  __$$CommonErrorResponseImplCopyWithImpl(_$CommonErrorResponseImpl _value,
      $Res Function(_$CommonErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
  }) {
    return _then(_$CommonErrorResponseImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommonErrorResponseImpl implements _CommonErrorResponse {
  const _$CommonErrorResponseImpl(
      {@JsonKey(name: 'detail') required this.detail});

  factory _$CommonErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommonErrorResponseImplFromJson(json);

  @override
  @JsonKey(name: 'detail')
  final String detail;

  @override
  String toString() {
    return 'CommonErrorResponse(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonErrorResponseImpl &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail);

  /// Create a copy of CommonErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonErrorResponseImplCopyWith<_$CommonErrorResponseImpl> get copyWith =>
      __$$CommonErrorResponseImplCopyWithImpl<_$CommonErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommonErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _CommonErrorResponse implements CommonErrorResponse {
  const factory _CommonErrorResponse(
          {@JsonKey(name: 'detail') required final String detail}) =
      _$CommonErrorResponseImpl;

  factory _CommonErrorResponse.fromJson(Map<String, dynamic> json) =
      _$CommonErrorResponseImpl.fromJson;

  @override
  @JsonKey(name: 'detail')
  String get detail;

  /// Create a copy of CommonErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonErrorResponseImplCopyWith<_$CommonErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
