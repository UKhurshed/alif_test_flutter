part of 'post_comments_cubit.dart';

@freezed
class PostCommentsState with _$PostCommentsState {
  const PostCommentsState._();

  const factory PostCommentsState._internal(
      {required Result<List<CommentItem>> commentsResult,
      required Result<CommentItem> createPostCommentResult,
      required Result<CommentItem> updatePostCommentResult,
      required Result<void> deletePostCommentResult}) = _PostCommentsState;

  factory PostCommentsState.initial() => const PostCommentsState._internal(
        commentsResult: Initial(),
        createPostCommentResult: Initial(),
        updatePostCommentResult: Initial(),
        deletePostCommentResult: Initial(),
      );
}
