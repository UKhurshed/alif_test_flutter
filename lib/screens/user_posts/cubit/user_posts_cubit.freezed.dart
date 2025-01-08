// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_posts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPostsState {
  Result<List<UserPost>> get userPostsResult =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserPostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPostsStateCopyWith<UserPostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostsStateCopyWith<$Res> {
  factory $UserPostsStateCopyWith(
          UserPostsState value, $Res Function(UserPostsState) then) =
      _$UserPostsStateCopyWithImpl<$Res, UserPostsState>;
  @useResult
  $Res call({Result<List<UserPost>> userPostsResult});
}

/// @nodoc
class _$UserPostsStateCopyWithImpl<$Res, $Val extends UserPostsState>
    implements $UserPostsStateCopyWith<$Res> {
  _$UserPostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPostsResult = null,
  }) {
    return _then(_value.copyWith(
      userPostsResult: null == userPostsResult
          ? _value.userPostsResult
          : userPostsResult // ignore: cast_nullable_to_non_nullable
              as Result<List<UserPost>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPostsStateImplCopyWith<$Res>
    implements $UserPostsStateCopyWith<$Res> {
  factory _$$UserPostsStateImplCopyWith(_$UserPostsStateImpl value,
          $Res Function(_$UserPostsStateImpl) then) =
      __$$UserPostsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result<List<UserPost>> userPostsResult});
}

/// @nodoc
class __$$UserPostsStateImplCopyWithImpl<$Res>
    extends _$UserPostsStateCopyWithImpl<$Res, _$UserPostsStateImpl>
    implements _$$UserPostsStateImplCopyWith<$Res> {
  __$$UserPostsStateImplCopyWithImpl(
      _$UserPostsStateImpl _value, $Res Function(_$UserPostsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPostsResult = null,
  }) {
    return _then(_$UserPostsStateImpl(
      userPostsResult: null == userPostsResult
          ? _value.userPostsResult
          : userPostsResult // ignore: cast_nullable_to_non_nullable
              as Result<List<UserPost>>,
    ));
  }
}

/// @nodoc

class _$UserPostsStateImpl extends _UserPostsState {
  const _$UserPostsStateImpl({required this.userPostsResult}) : super._();

  @override
  final Result<List<UserPost>> userPostsResult;

  @override
  String toString() {
    return 'UserPostsState._internal(userPostsResult: $userPostsResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPostsStateImpl &&
            (identical(other.userPostsResult, userPostsResult) ||
                other.userPostsResult == userPostsResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userPostsResult);

  /// Create a copy of UserPostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPostsStateImplCopyWith<_$UserPostsStateImpl> get copyWith =>
      __$$UserPostsStateImplCopyWithImpl<_$UserPostsStateImpl>(
          this, _$identity);
}

abstract class _UserPostsState extends UserPostsState {
  const factory _UserPostsState(
          {required final Result<List<UserPost>> userPostsResult}) =
      _$UserPostsStateImpl;
  const _UserPostsState._() : super._();

  @override
  Result<List<UserPost>> get userPostsResult;

  /// Create a copy of UserPostsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPostsStateImplCopyWith<_$UserPostsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
