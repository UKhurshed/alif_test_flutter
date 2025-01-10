import 'package:api/api.dart';
import 'package:database/database.dart';
import 'package:domain/domain.dart';
import 'package:repository/src/mappers/mappers.dart';
import 'package:repository/src/util/request_handler.dart';

class PostsRepositoryImpl implements PostsRepository {
  PostsRepositoryImpl({
    required PostsService postsService,
    required AppDatabase appDatabase,
  })  : _postsService = postsService,
        _appDatabase = appDatabase;

  final PostsService _postsService;
  final AppDatabase _appDatabase;

  @override
  Future<List<CommentItem>> getCommentsByPostID({
    required int postID,
  }) async {
    final postComments =
        await _appDatabase.postCommentsDao.getPostComments(postID);
    if (postComments.isEmpty) {
      final response =
          await handleRequest<List<CommentResponse>, List<CommentItem>>(
        () => _postsService.commentsByPostId(postID),
        (input) {
          final domainEntity = input.asDomainEntity;
          _appDatabase.postCommentsDao.insertPostComments(domainEntity);
          return input.asDomainEntity;
        },
      );
      return response;
    } else {
      return postComments.asDomainFromDB;
    }
  }

  @override
  Future<CommentItem> createPostComment({
    required int postID,
    required CreatePostComment createPostComment,
  }) async {
    final response = await handleRequest<CreateCommentResponse, CommentItem>(
      () => _postsService.createPostComment(
        postID,
        CreatePostCommentRequestBody(
          postID: createPostComment.postID,
          name: createPostComment.name,
          email: createPostComment.email,
          body: createPostComment.body,
        ),
      ),
      (input) {
        final _ = _appDatabase.postCommentsDao.insertPostComment(
          CommentItem(
              postID: postID,
              id: input.id,
              name: createPostComment.name,
              email: createPostComment.email,
              body: createPostComment.body),
        );
        return input.asDomainEntity;
      },
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
      (input) {
        final _ = _appDatabase.userPostsDao.insertUserPost(
          UserPost(
              userID: createUserPost.userID,
              id: input.id,
              title: createUserPost.title,
              body: createUserPost.body),
        );
        return input.asDomainEntity;
      },
    );

    return response;
  }

  @override
  Future<void> deleteUserPost({
    required int postID,
  }) async {
    final response = await handleRequest(() {
      final deleteResult = _postsService.deleteUserPost(postID);
      return deleteResult;
    }, (input) async {
      final _ = await _appDatabase.userPostsDao.deleteUserPostById(postID);
      return input;
    });
    return response;
  }

  @override
  Future<UserPost> updateUserPost({
    required int postID,
    required UserPost updateUserPost,
  }) async {
    _appDatabase.userPostsDao.updatePost(updateUserPost);
    final response = await handleRequest<UserPostResponse, UserPost>(
      () => _postsService.updateUserPost(
        postID,
        UpdateUserPostRequestBody(
          title: updateUserPost.title,
          body: updateUserPost.body,
          userID: updateUserPost.userID,
          id: postID,
        ),
      ),
      (input) => input.asDomainEntity,
    );

    return response;
  }

  @override
  Stream<List<CommentItem>> watchComments({required int postID}) {
    return _appDatabase.postCommentsDao.watchPostComments(postID).map((list) {
      return list.map((postDBComment) {
        return CommentItem(
          postID: postDBComment.postID,
          id: postDBComment.id,
          name: postDBComment.name,
          email: postDBComment.email,
          body: postDBComment.body,
        );
      }).toList();
    });
  }
}
