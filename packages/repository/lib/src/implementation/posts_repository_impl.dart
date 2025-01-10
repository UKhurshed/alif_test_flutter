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

  @override
  Future<CommentItem> createPostComment({
    required int postID,
    required CreatePostComment createPostComment,
  }) async {
    final response = await handleRequest<CommentResponse, CommentItem>(
      () => _postsService.createPostComment(
        postID,
        CreatePostCommentRequestBody(
          postID: createPostComment.postID,
          name: createPostComment.name,
          email: createPostComment.email,
          body: createPostComment.body,
        ),
      ),
      (input) => input.asDomainEntity,
    );

    return response;
  }

  @override
  Future<UserPost> createUserPost({
    required CreateUserPost createUserPost,
  }) async {
    final response = await handleRequest<UserPostResponse, UserPost>(
      () => _postsService.createUserPost(
        CreateUserPostRequestBody(
          userID: createUserPost.userID,
          title: createUserPost.title,
          body: createUserPost.body,
        ),
      ),
      (input) => input.asDomainEntity,
    );

    return response;
  }

  @override
  Future<void> deleteUserPost({required int postID}) async {
    final response = await handleRequest(
        () => _postsService.deleteUserPost(postID), (input) => input);
    return response;
  }

  @override
  Future<UserPost> updateUserPost({
    required int postID,
    required UpdateUserPost updateUserPost,
  }) async {
    final response = await handleRequest<UserPostResponse, UserPost>(
        () => _postsService.updateUserPost(
              postID,
              UpdateUserPostRequestBody(
                title: updateUserPost.title,
                body: updateUserPost.body,
                userID: updateUserPost.userID,
                id: updateUserPost.id,
              ),
            ),
        (input) => input.asDomainEntity);

    return response;
  }
}
