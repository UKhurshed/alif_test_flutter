import 'package:domain/domain.dart';

abstract class PostsRepository {
  Future<List<CommentItem>> getCommentsByPostID(int postID);
}