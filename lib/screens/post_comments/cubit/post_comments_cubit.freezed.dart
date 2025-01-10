// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comments_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostCommentsState {
  Result<List<CommentItem>> get commentsResult =>
      throw _privateConstructorUsedError;
  Result<CommentItem> get createPostCommentResult =>
      throw _privateConstructorUsedError;
  Result<CommentItem> get updatePostCommentResult =>
      throw _privateConstructorUsedError;
  Result<void> get deletePostCommentResult =>
      throw _privateConstructorUsedError;

  /// Create a copy of PostCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommentsStateCopyWith<PostCommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentsStateCopyWith<$Res> {
  factory $PostCommentsStateCopyWith(
          PostCommentsState value, $Res Function(PostCommentsState) then) =
      _$PostCommentsStateCopyWithImpl<$Res, PostCommentsState>;
  @useResult
  $Res call(
      {Result<List<CommentItem>> commentsResult,
      Result<CommentItem> createPostCommentResult,
      Result<CommentItem> updatePostCommentResult,
      Result<void> deletePostCommentResult});
}

/// @nodoc
class _$PostCommentsStateCopyWithImpl<$Res, $Val extends PostCommentsState>
    implements $PostCommentsStateCopyWith<$Res> {
  _$PostCommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentsResult = null,
    Object? createPostCommentResult = null,
    Object? updatePostCommentResult = null,
    Object? deletePostCommentResult = null,
  }) {
    return _then(_value.copyWith(
      commentsResult: null == commentsResult
          ? _value.commentsResult
          : commentsResult // ignore: cast_nullable_to_non_nullable
              as Result<List<CommentItem>>,
      createPostCommentResult: null == createPostCommentResult
          ? _value.createPostCommentResult
          : createPostCommentResult // ignore: cast_nullable_to_non_nullable
              as Result<CommentItem>,
      updatePostCommentResult: null == updatePostCommentResult
          ? _value.updatePostCommentResult
          : updatePostCommentResult // ignore: cast_nullable_to_non_nullable
              as Result<CommentItem>,
      deletePostCommentResult: null == deletePostCommentResult
          ? _value.deletePostCommentResult
          : deletePostCommentResult // ignore: cast_nullable_to_non_nullable
              as Result<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCommentsStateImplCopyWith<$Res>
    implements $PostCommentsStateCopyWith<$Res> {
  factory _$$PostCommentsStateImplCopyWith(_$PostCommentsStateImpl value,
          $Res Function(_$PostCommentsStateImpl) then) =
      __$$PostCommentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Result<List<CommentItem>> commentsResult,
      Result<CommentItem> createPostCommentResult,
      Result<CommentItem> updatePostCommentResult,
      Result<void> deletePostCommentResult});
}

/// @nodoc
class __$$PostCommentsStateImplCopyWithImpl<$Res>
    extends _$PostCommentsStateCopyWithImpl<$Res, _$PostCommentsStateImpl>
    implements _$$PostCommentsStateImplCopyWith<$Res> {
  __$$PostCommentsStateImplCopyWithImpl(_$PostCommentsStateImpl _value,
      $Res Function(_$PostCommentsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentsResult = null,
    Object? createPostCommentResult = null,
    Object? updatePostCommentResult = null,
    Object? deletePostCommentResult = null,
  }) {
    return _then(_$PostCommentsStateImpl(
      commentsResult: null == commentsResult
          ? _value.commentsResult
          : commentsResult // ignore: cast_nullable_to_non_nullable
              as Result<List<CommentItem>>,
      createPostCommentResult: null == createPostCommentResult
          ? _value.createPostCommentResult
          : createPostCommentResult // ignore: cast_nullable_to_non_nullable
              as Result<CommentItem>,
      updatePostCommentResult: null == updatePostCommentResult
          ? _value.updatePostCommentResult
          : updatePostCommentResult // ignore: cast_nullable_to_non_nullable
              as Result<CommentItem>,
      deletePostCommentResult: null == deletePostCommentResult
          ? _value.deletePostCommentResult
          : deletePostCommentResult // ignore: cast_nullable_to_non_nullable
              as Result<void>,
    ));
  }
}

/// @nodoc

class _$PostCommentsStateImpl extends _PostCommentsState {
  const _$PostCommentsStateImpl(
      {required this.commentsResult,
      required this.createPostCommentResult,
      required this.updatePostCommentResult,
      required this.deletePostCommentResult})
      : super._();

  @override
  final Result<List<CommentItem>> commentsResult;
  @override
  final Result<CommentItem> createPostCommentResult;
  @override
  final Result<CommentItem> updatePostCommentResult;
  @override
  final Result<void> deletePostCommentResult;

  @override
  String toString() {
    return 'PostCommentsState._internal(commentsResult: $commentsResult, createPostCommentResult: $createPostCommentResult, updatePostCommentResult: $updatePostCommentResult, deletePostCommentResult: $deletePostCommentResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentsStateImpl &&
            (identical(other.commentsResult, commentsResult) ||
                other.commentsResult == commentsResult) &&
            (identical(
                    other.createPostCommentResult, createPostCommentResult) ||
                other.createPostCommentResult == createPostCommentResult) &&
            (identical(
                    other.updatePostCommentResult, updatePostCommentResult) ||
                other.updatePostCommentResult == updatePostCommentResult) &&
            (identical(
                    other.deletePostCommentResult, deletePostCommentResult) ||
                other.deletePostCommentResult == deletePostCommentResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentsResult,
      createPostCommentResult,
      updatePostCommentResult,
      deletePostCommentResult);

  /// Create a copy of PostCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentsStateImplCopyWith<_$PostCommentsStateImpl> get copyWith =>
      __$$PostCommentsStateImplCopyWithImpl<_$PostCommentsStateImpl>(
          this, _$identity);
}

abstract class _PostCommentsState extends PostCommentsState {
  const factory _PostCommentsState(
          {required final Result<List<CommentItem>> commentsResult,
          required final Result<CommentItem> createPostCommentResult,
          required final Result<CommentItem> updatePostCommentResult,
          required final Result<void> deletePostCommentResult}) =
      _$PostCommentsStateImpl;
  const _PostCommentsState._() : super._();

  @override
  Result<List<CommentItem>> get commentsResult;
  @override
  Result<CommentItem> get createPostCommentResult;
  @override
  Result<CommentItem> get updatePostCommentResult;
  @override
  Result<void> get deletePostCommentResult;

  /// Create a copy of PostCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentsStateImplCopyWith<_$PostCommentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
