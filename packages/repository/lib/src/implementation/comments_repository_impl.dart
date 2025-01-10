import 'package:api/api.dart';
import 'package:database/database.dart';
import 'package:domain/domain.dart';
import 'package:repository/src/mappers/mappers.dart';
import 'package:repository/src/util/request_handler.dart';

class CommentsRepositoryImpl implements CommentsRepository {
  CommentsRepositoryImpl({
    required CommentsService commentsService,
    required AppDatabase appDatabase,
  })  : _commentsService = commentsService,
        _appDatabase = appDatabase;

  final AppDatabase _appDatabase;
  final CommentsService _commentsService;

  @override
  Future<void> deletePostComment({required int commentID}) async {
    final response = await handleRequest<void, void>(
        () => _commentsService.deletePostComment(commentID), (input) async {
      final _ =
          await _appDatabase.postCommentsDao.deletePostCommentById(commentID);
      return input;
    });
    return response;
  }

  @override
  Future<CommentItem> updatePostComment({
    required int commentID,
    required CreatePostComment updatePostComment,
  }) async {
    final _ = _appDatabase.postCommentsDao.updatePost(CommentItem(
        postID: updatePostComment.postID,
        id: commentID,
        name: updatePostComment.name,
        email: updatePostComment.email,
        body: updatePostComment.body));
    final response = await handleRequest<CommentResponse, CommentItem>(
      () => _commentsService.updatePostComment(
          commentID,
          UpdatePostCommentRequestBody(
              id: commentID,
              postID: updatePostComment.postID,
              name: updatePostComment.name,
              email: updatePostComment.email,
              body: updatePostComment.email)),
      (input) => input.asDomainEntity,
    );
    return response;
  }
}
