part of 'user_posts_cubit.dart';

@freezed
class UserPostsState with _$UserPostsState {
  const UserPostsState._();

  const factory UserPostsState._internal({
    required Result<List<UserPost>> userPostsResult,
    required Result<UserPost> createUserPostResult,
    required Result<UserPost> updateUserPostResult,
    required Result<void> deleteUserPostResult,
  }) = _UserPostsState;

  factory UserPostsState.initial() => const UserPostsState._internal(
        userPostsResult: Initial(),
        createUserPostResult: Initial(),
        updateUserPostResult: Initial(),
        deleteUserPostResult: Initial(),
      );
}
