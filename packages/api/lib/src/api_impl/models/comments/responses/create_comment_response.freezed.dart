// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCommentResponse _$CreateCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateCommentResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'postId')
  String get postID => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;

  /// Serializes this CreateCommentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCommentResponseCopyWith<CreateCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentResponseCopyWith<$Res> {
  factory $CreateCommentResponseCopyWith(CreateCommentResponse value,
          $Res Function(CreateCommentResponse) then) =
      _$CreateCommentResponseCopyWithImpl<$Res, CreateCommentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'postId') String postID,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class _$CreateCommentResponseCopyWithImpl<$Res,
        $Val extends CreateCommentResponse>
    implements $CreateCommentResponseCopyWith<$Res> {
  _$CreateCommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postID = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCommentResponseImplCopyWith<$Res>
    implements $CreateCommentResponseCopyWith<$Res> {
  factory _$$CreateCommentResponseImplCopyWith(
          _$CreateCommentResponseImpl value,
          $Res Function(_$CreateCommentResponseImpl) then) =
      __$$CreateCommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'postId') String postID,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class __$$CreateCommentResponseImplCopyWithImpl<$Res>
    extends _$CreateCommentResponseCopyWithImpl<$Res,
        _$CreateCommentResponseImpl>
    implements _$$CreateCommentResponseImplCopyWith<$Res> {
  __$$CreateCommentResponseImplCopyWithImpl(_$CreateCommentResponseImpl _value,
      $Res Function(_$CreateCommentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postID = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$CreateCommentResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$CreateCommentResponseImpl implements _CreateCommentResponse {
  const _$CreateCommentResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'postId') required this.postID,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'body') required this.body});

  factory _$CreateCommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCommentResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'postId')
  final String postID;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'body')
  final String body;

  @override
  String toString() {
    return 'CreateCommentResponse(id: $id, postID: $postID, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, postID, name, email, body);

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentResponseImplCopyWith<_$CreateCommentResponseImpl>
      get copyWith => __$$CreateCommentResponseImplCopyWithImpl<
          _$CreateCommentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCommentResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateCommentResponse implements CreateCommentResponse {
  const factory _CreateCommentResponse(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'postId') required final String postID,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'body') required final String body}) =
      _$CreateCommentResponseImpl;

  factory _CreateCommentResponse.fromJson(Map<String, dynamic> json) =
      _$CreateCommentResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'postId')
  String get postID;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'body')
  String get body;

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCommentResponseImplCopyWith<_$CreateCommentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
