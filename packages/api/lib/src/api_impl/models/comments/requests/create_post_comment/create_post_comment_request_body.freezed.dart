// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_comment_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePostCommentRequestBody _$CreatePostCommentRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _CreatePostCommentRequestBody.fromJson(json);
}

/// @nodoc
mixin _$CreatePostCommentRequestBody {
  @JsonKey(name: 'postId')
  int get postID => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;

  /// Serializes this CreatePostCommentRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePostCommentRequestBodyCopyWith<CreatePostCommentRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostCommentRequestBodyCopyWith<$Res> {
  factory $CreatePostCommentRequestBodyCopyWith(
          CreatePostCommentRequestBody value,
          $Res Function(CreatePostCommentRequestBody) then) =
      _$CreatePostCommentRequestBodyCopyWithImpl<$Res,
          CreatePostCommentRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'postId') int postID,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class _$CreatePostCommentRequestBodyCopyWithImpl<$Res,
        $Val extends CreatePostCommentRequestBody>
    implements $CreatePostCommentRequestBodyCopyWith<$Res> {
  _$CreatePostCommentRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$CreatePostCommentRequestBodyImplCopyWith<$Res>
    implements $CreatePostCommentRequestBodyCopyWith<$Res> {
  factory _$$CreatePostCommentRequestBodyImplCopyWith(
          _$CreatePostCommentRequestBodyImpl value,
          $Res Function(_$CreatePostCommentRequestBodyImpl) then) =
      __$$CreatePostCommentRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'postId') int postID,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class __$$CreatePostCommentRequestBodyImplCopyWithImpl<$Res>
    extends _$CreatePostCommentRequestBodyCopyWithImpl<$Res,
        _$CreatePostCommentRequestBodyImpl>
    implements _$$CreatePostCommentRequestBodyImplCopyWith<$Res> {
  __$$CreatePostCommentRequestBodyImplCopyWithImpl(
      _$CreatePostCommentRequestBodyImpl _value,
      $Res Function(_$CreatePostCommentRequestBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postID = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$CreatePostCommentRequestBodyImpl(
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$CreatePostCommentRequestBodyImpl
    implements _CreatePostCommentRequestBody {
  const _$CreatePostCommentRequestBodyImpl(
      {@JsonKey(name: 'postId') required this.postID,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'body') required this.body});

  factory _$CreatePostCommentRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePostCommentRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'postId')
  final int postID;
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
    return 'CreatePostCommentRequestBody(postID: $postID, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostCommentRequestBodyImpl &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postID, name, email, body);

  /// Create a copy of CreatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostCommentRequestBodyImplCopyWith<
          _$CreatePostCommentRequestBodyImpl>
      get copyWith => __$$CreatePostCommentRequestBodyImplCopyWithImpl<
          _$CreatePostCommentRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePostCommentRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _CreatePostCommentRequestBody
    implements CreatePostCommentRequestBody {
  const factory _CreatePostCommentRequestBody(
          {@JsonKey(name: 'postId') required final int postID,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'body') required final String body}) =
      _$CreatePostCommentRequestBodyImpl;

  factory _CreatePostCommentRequestBody.fromJson(Map<String, dynamic> json) =
      _$CreatePostCommentRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'postId')
  int get postID;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'body')
  String get body;

  /// Create a copy of CreatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePostCommentRequestBodyImplCopyWith<
          _$CreatePostCommentRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
