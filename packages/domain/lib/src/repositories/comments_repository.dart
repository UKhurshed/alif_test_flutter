import 'package:domain/domain.dart';

abstract class CommentsRepository {
  Future<CommentItem> updatePostComment({
    required int commentID,
    required CreatePostComment updatePostComment,
  });

  Future<void> deletePostComment({
    required int commentID,
  });
}
