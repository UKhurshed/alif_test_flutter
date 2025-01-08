import 'package:api/api.dart';
import 'package:domain/domain.dart';
import 'package:repository/src/mappers/mappers.dart';
import 'package:repository/src/util/request_handler.dart';

class PostsRepositoryImpl implements PostsRepository {
  PostsRepositoryImpl({
    required PostsService postsService,
  }) : _postsService = postsService;

  final PostsService _postsService;

  @override
  Future<List<CommentItem>> getCommentsByPostID(int postID) async {
    final response =
        await handleRequest<List<CommentResponse>, List<CommentItem>>(
      () => _postsService.commentsByPostId(postID),
      (input) => input.asDomainEntity,
    );

    return response;
  }
}
