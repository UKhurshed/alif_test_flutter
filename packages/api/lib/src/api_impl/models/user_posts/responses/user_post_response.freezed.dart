// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPostResponse _$UserPostResponseFromJson(Map<String, dynamic> json) {
  return _UserPostResponse.fromJson(json);
}

/// @nodoc
mixin _$UserPostResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;

  /// Serializes this UserPostResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPostResponseCopyWith<UserPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostResponseCopyWith<$Res> {
  factory $UserPostResponseCopyWith(
          UserPostResponse value, $Res Function(UserPostResponse) then) =
      _$UserPostResponseCopyWithImpl<$Res, UserPostResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'userId') int userID,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class _$UserPostResponseCopyWithImpl<$Res, $Val extends UserPostResponse>
    implements $UserPostResponseCopyWith<$Res> {
  _$UserPostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPostResponseImplCopyWith<$Res>
    implements $UserPostResponseCopyWith<$Res> {
  factory _$$UserPostResponseImplCopyWith(_$UserPostResponseImpl value,
          $Res Function(_$UserPostResponseImpl) then) =
      __$$UserPostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'userId') int userID,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class __$$UserPostResponseImplCopyWithImpl<$Res>
    extends _$UserPostResponseCopyWithImpl<$Res, _$UserPostResponseImpl>
    implements _$$UserPostResponseImplCopyWith<$Res> {
  __$$UserPostResponseImplCopyWithImpl(_$UserPostResponseImpl _value,
      $Res Function(_$UserPostResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userID = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$UserPostResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPostResponseImpl implements _UserPostResponse {
  const _$UserPostResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'userId') required this.userID,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') required this.body});

  factory _$UserPostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPostResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'userId')
  final int userID;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;

  @override
  String toString() {
    return 'UserPostResponse(id: $id, userID: $userID, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPostResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userID, title, body);

  /// Create a copy of UserPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPostResponseImplCopyWith<_$UserPostResponseImpl> get copyWith =>
      __$$UserPostResponseImplCopyWithImpl<_$UserPostResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPostResponseImplToJson(
      this,
    );
  }
}

abstract class _UserPostResponse implements UserPostResponse {
  const factory _UserPostResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'userId') required final int userID,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'body') required final String body}) =
      _$UserPostResponseImpl;

  factory _UserPostResponse.fromJson(Map<String, dynamic> json) =
      _$UserPostResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'userId')
  int get userID;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;

  /// Create a copy of UserPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPostResponseImplCopyWith<_$UserPostResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
