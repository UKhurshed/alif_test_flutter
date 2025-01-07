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
  DetailErrorResponse get detail => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: 'detail') DetailErrorResponse detail});

  $DetailErrorResponseCopyWith<$Res> get detail;
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
              as DetailErrorResponse,
    ) as $Val);
  }

  /// Create a copy of CommonErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailErrorResponseCopyWith<$Res> get detail {
    return $DetailErrorResponseCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
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
  $Res call({@JsonKey(name: 'detail') DetailErrorResponse detail});

  @override
  $DetailErrorResponseCopyWith<$Res> get detail;
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
              as DetailErrorResponse,
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
  final DetailErrorResponse detail;

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
      {@JsonKey(name: 'detail')
      required final DetailErrorResponse detail}) = _$CommonErrorResponseImpl;

  factory _CommonErrorResponse.fromJson(Map<String, dynamic> json) =
      _$CommonErrorResponseImpl.fromJson;

  @override
  @JsonKey(name: 'detail')
  DetailErrorResponse get detail;

  /// Create a copy of CommonErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonErrorResponseImplCopyWith<_$CommonErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailErrorResponse _$DetailErrorResponseFromJson(Map<String, dynamic> json) {
  return _DetailErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailErrorResponse {
  @JsonKey(name: 'error_message')
  ErrorMessageResponse get errorMessageResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this DetailErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailErrorResponseCopyWith<DetailErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailErrorResponseCopyWith<$Res> {
  factory $DetailErrorResponseCopyWith(
          DetailErrorResponse value, $Res Function(DetailErrorResponse) then) =
      _$DetailErrorResponseCopyWithImpl<$Res, DetailErrorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'error_message')
      ErrorMessageResponse errorMessageResponse});

  $ErrorMessageResponseCopyWith<$Res> get errorMessageResponse;
}

/// @nodoc
class _$DetailErrorResponseCopyWithImpl<$Res, $Val extends DetailErrorResponse>
    implements $DetailErrorResponseCopyWith<$Res> {
  _$DetailErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessageResponse = null,
  }) {
    return _then(_value.copyWith(
      errorMessageResponse: null == errorMessageResponse
          ? _value.errorMessageResponse
          : errorMessageResponse // ignore: cast_nullable_to_non_nullable
              as ErrorMessageResponse,
    ) as $Val);
  }

  /// Create a copy of DetailErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorMessageResponseCopyWith<$Res> get errorMessageResponse {
    return $ErrorMessageResponseCopyWith<$Res>(_value.errorMessageResponse,
        (value) {
      return _then(_value.copyWith(errorMessageResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailErrorResponseImplCopyWith<$Res>
    implements $DetailErrorResponseCopyWith<$Res> {
  factory _$$DetailErrorResponseImplCopyWith(_$DetailErrorResponseImpl value,
          $Res Function(_$DetailErrorResponseImpl) then) =
      __$$DetailErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error_message')
      ErrorMessageResponse errorMessageResponse});

  @override
  $ErrorMessageResponseCopyWith<$Res> get errorMessageResponse;
}

/// @nodoc
class __$$DetailErrorResponseImplCopyWithImpl<$Res>
    extends _$DetailErrorResponseCopyWithImpl<$Res, _$DetailErrorResponseImpl>
    implements _$$DetailErrorResponseImplCopyWith<$Res> {
  __$$DetailErrorResponseImplCopyWithImpl(_$DetailErrorResponseImpl _value,
      $Res Function(_$DetailErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessageResponse = null,
  }) {
    return _then(_$DetailErrorResponseImpl(
      errorMessageResponse: null == errorMessageResponse
          ? _value.errorMessageResponse
          : errorMessageResponse // ignore: cast_nullable_to_non_nullable
              as ErrorMessageResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailErrorResponseImpl implements _DetailErrorResponse {
  const _$DetailErrorResponseImpl(
      {@JsonKey(name: 'error_message') required this.errorMessageResponse});

  factory _$DetailErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailErrorResponseImplFromJson(json);

  @override
  @JsonKey(name: 'error_message')
  final ErrorMessageResponse errorMessageResponse;

  @override
  String toString() {
    return 'DetailErrorResponse(errorMessageResponse: $errorMessageResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailErrorResponseImpl &&
            (identical(other.errorMessageResponse, errorMessageResponse) ||
                other.errorMessageResponse == errorMessageResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessageResponse);

  /// Create a copy of DetailErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailErrorResponseImplCopyWith<_$DetailErrorResponseImpl> get copyWith =>
      __$$DetailErrorResponseImplCopyWithImpl<_$DetailErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailErrorResponse implements DetailErrorResponse {
  const factory _DetailErrorResponse(
          {@JsonKey(name: 'error_message')
          required final ErrorMessageResponse errorMessageResponse}) =
      _$DetailErrorResponseImpl;

  factory _DetailErrorResponse.fromJson(Map<String, dynamic> json) =
      _$DetailErrorResponseImpl.fromJson;

  @override
  @JsonKey(name: 'error_message')
  ErrorMessageResponse get errorMessageResponse;

  /// Create a copy of DetailErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailErrorResponseImplCopyWith<_$DetailErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorMessageResponse _$ErrorMessageResponseFromJson(Map<String, dynamic> json) {
  return _ErrorMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$ErrorMessageResponse {
  @JsonKey(name: 'en')
  String get en => throw _privateConstructorUsedError;
  @JsonKey(name: 'ru')
  String get ru => throw _privateConstructorUsedError;
  @JsonKey(name: 'tj')
  String get tj => throw _privateConstructorUsedError;

  /// Serializes this ErrorMessageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorMessageResponseCopyWith<ErrorMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMessageResponseCopyWith<$Res> {
  factory $ErrorMessageResponseCopyWith(ErrorMessageResponse value,
          $Res Function(ErrorMessageResponse) then) =
      _$ErrorMessageResponseCopyWithImpl<$Res, ErrorMessageResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'en') String en,
      @JsonKey(name: 'ru') String ru,
      @JsonKey(name: 'tj') String tj});
}

/// @nodoc
class _$ErrorMessageResponseCopyWithImpl<$Res,
        $Val extends ErrorMessageResponse>
    implements $ErrorMessageResponseCopyWith<$Res> {
  _$ErrorMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ru = null,
    Object? tj = null,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ru: null == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String,
      tj: null == tj
          ? _value.tj
          : tj // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorMessageResponseImplCopyWith<$Res>
    implements $ErrorMessageResponseCopyWith<$Res> {
  factory _$$ErrorMessageResponseImplCopyWith(_$ErrorMessageResponseImpl value,
          $Res Function(_$ErrorMessageResponseImpl) then) =
      __$$ErrorMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'en') String en,
      @JsonKey(name: 'ru') String ru,
      @JsonKey(name: 'tj') String tj});
}

/// @nodoc
class __$$ErrorMessageResponseImplCopyWithImpl<$Res>
    extends _$ErrorMessageResponseCopyWithImpl<$Res, _$ErrorMessageResponseImpl>
    implements _$$ErrorMessageResponseImplCopyWith<$Res> {
  __$$ErrorMessageResponseImplCopyWithImpl(_$ErrorMessageResponseImpl _value,
      $Res Function(_$ErrorMessageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ru = null,
    Object? tj = null,
  }) {
    return _then(_$ErrorMessageResponseImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ru: null == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String,
      tj: null == tj
          ? _value.tj
          : tj // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorMessageResponseImpl implements _ErrorMessageResponse {
  const _$ErrorMessageResponseImpl(
      {@JsonKey(name: 'en') required this.en,
      @JsonKey(name: 'ru') required this.ru,
      @JsonKey(name: 'tj') required this.tj});

  factory _$ErrorMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorMessageResponseImplFromJson(json);

  @override
  @JsonKey(name: 'en')
  final String en;
  @override
  @JsonKey(name: 'ru')
  final String ru;
  @override
  @JsonKey(name: 'tj')
  final String tj;

  @override
  String toString() {
    return 'ErrorMessageResponse(en: $en, ru: $ru, tj: $tj)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageResponseImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ru, ru) || other.ru == ru) &&
            (identical(other.tj, tj) || other.tj == tj));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, en, ru, tj);

  /// Create a copy of ErrorMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageResponseImplCopyWith<_$ErrorMessageResponseImpl>
      get copyWith =>
          __$$ErrorMessageResponseImplCopyWithImpl<_$ErrorMessageResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _ErrorMessageResponse implements ErrorMessageResponse {
  const factory _ErrorMessageResponse(
          {@JsonKey(name: 'en') required final String en,
          @JsonKey(name: 'ru') required final String ru,
          @JsonKey(name: 'tj') required final String tj}) =
      _$ErrorMessageResponseImpl;

  factory _ErrorMessageResponse.fromJson(Map<String, dynamic> json) =
      _$ErrorMessageResponseImpl.fromJson;

  @override
  @JsonKey(name: 'en')
  String get en;
  @override
  @JsonKey(name: 'ru')
  String get ru;
  @override
  @JsonKey(name: 'tj')
  String get tj;

  /// Create a copy of ErrorMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMessageResponseImplCopyWith<_$ErrorMessageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
