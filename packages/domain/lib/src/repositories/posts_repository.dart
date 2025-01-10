import 'package:domain/domain.dart';

abstract class PostsRepository {
  Future<List<CommentItem>> getCommentsByPostID(int postID);

  Future<UserPost> createUserPost({
    required CreateUserPost createUserPost,
  });

  Future<UserPost> updateUserPost({
    required int postID,
    required UpdateUserPost updateUserPost,
  });

  Future<void> deleteUserPost({required int postID});

  Future<CommentItem> createPostComment({
    required int postID,
    required CreatePostComment createPostComment,
  });
}