// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_post_comment_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatePostCommentRequestBody _$UpdatePostCommentRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _UpdatePostCommentRequestBody.fromJson(json);
}

/// @nodoc
mixin _$UpdatePostCommentRequestBody {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'postId')
  int get postID => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;

  /// Serializes this UpdatePostCommentRequestBody to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatePostCommentRequestBodyCopyWith<UpdatePostCommentRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePostCommentRequestBodyCopyWith<$Res> {
  factory $UpdatePostCommentRequestBodyCopyWith(
          UpdatePostCommentRequestBody value,
          $Res Function(UpdatePostCommentRequestBody) then) =
      _$UpdatePostCommentRequestBodyCopyWithImpl<$Res,
          UpdatePostCommentRequestBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'postId') int postID,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class _$UpdatePostCommentRequestBodyCopyWithImpl<$Res,
        $Val extends UpdatePostCommentRequestBody>
    implements $UpdatePostCommentRequestBodyCopyWith<$Res> {
  _$UpdatePostCommentRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatePostCommentRequestBody
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
abstract class _$$UpdatePostCommentRequestBodyImplCopyWith<$Res>
    implements $UpdatePostCommentRequestBodyCopyWith<$Res> {
  factory _$$UpdatePostCommentRequestBodyImplCopyWith(
          _$UpdatePostCommentRequestBodyImpl value,
          $Res Function(_$UpdatePostCommentRequestBodyImpl) then) =
      __$$UpdatePostCommentRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'postId') int postID,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'body') String body});
}

/// @nodoc
class __$$UpdatePostCommentRequestBodyImplCopyWithImpl<$Res>
    extends _$UpdatePostCommentRequestBodyCopyWithImpl<$Res,
        _$UpdatePostCommentRequestBodyImpl>
    implements _$$UpdatePostCommentRequestBodyImplCopyWith<$Res> {
  __$$UpdatePostCommentRequestBodyImplCopyWithImpl(
      _$UpdatePostCommentRequestBodyImpl _value,
      $Res Function(_$UpdatePostCommentRequestBodyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatePostCommentRequestBody
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
    return _then(_$UpdatePostCommentRequestBodyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$UpdatePostCommentRequestBodyImpl
    implements _UpdatePostCommentRequestBody {
  const _$UpdatePostCommentRequestBodyImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'postId') required this.postID,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'body') required this.body});

  factory _$UpdatePostCommentRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdatePostCommentRequestBodyImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
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
    return 'UpdatePostCommentRequestBody(id: $id, postID: $postID, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePostCommentRequestBodyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, postID, name, email, body);

  /// Create a copy of UpdatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePostCommentRequestBodyImplCopyWith<
          _$UpdatePostCommentRequestBodyImpl>
      get copyWith => __$$UpdatePostCommentRequestBodyImplCopyWithImpl<
          _$UpdatePostCommentRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatePostCommentRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _UpdatePostCommentRequestBody
    implements UpdatePostCommentRequestBody {
  const factory _UpdatePostCommentRequestBody(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'postId') required final int postID,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'email') required final String email,
          @JsonKey(name: 'body') required final String body}) =
      _$UpdatePostCommentRequestBodyImpl;

  factory _UpdatePostCommentRequestBody.fromJson(Map<String, dynamic> json) =
      _$UpdatePostCommentRequestBodyImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
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

  /// Create a copy of UpdatePostCommentRequestBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePostCommentRequestBodyImplCopyWith<
          _$UpdatePostCommentRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
