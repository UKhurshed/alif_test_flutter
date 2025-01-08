part of 'user_posts_cubit.dart';

@freezed
class UserPostsState with _$UserPostsState {
  const UserPostsState._();

  const factory UserPostsState._internal({
    required Result<List<UserPost>> userPostsResult,
  }) = _UserPostsState;

  factory UserPostsState.initial() => UserPostsState._internal(
        userPostsResult: Initial(),
      );
}
