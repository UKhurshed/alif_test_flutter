import 'package:api/api.dart';
import 'package:domain/domain.dart';
import 'package:repository/src/mappers/mappers.dart';
import 'package:repository/src/util/request_handler.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  CommentsRepositoryImpl({
    required CommentsService commentsService,
  }) : _commentsService = commentsService;

  final CommentsService _commentsService;

  @override
  Future<void> deletePostComment({required int commentID}) async {
    final response = await handleRequest<void, void>(
        () => _commentsService.deletePostComment(commentID), (input) => input);
    return response;
  }

  @override
  Future<CommentItem> updatePostComment({
    required int commentID,
    required UpdatePostComment updatePostComment,
  }) async {
    final response = await handleRequest<CommentResponse, CommentItem>(
      () => _commentsService.updatePostComment(
          commentID,
          UpdatePostCommentRequestBody(
              id: updatePostComment.id,
              postID: updatePostComment.postID,
              name: updatePostComment.name,
              email: updatePostComment.email,
              body: updatePostComment.email)),
      (input) => input.asDomainEntity,
    );
    return response;
  }
}
