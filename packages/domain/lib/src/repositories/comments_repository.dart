import 'package:domain/domain.dart';

abstract class CommentsRepository {
  Future<CommentItem> updatePostComment({
    required int commentID,
    required UpdatePostComment updatePostComment,
  });

  Future<void> deletePostComment({
    required int commentID,
  });
}
