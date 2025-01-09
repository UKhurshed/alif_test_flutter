import 'package:database/src/init/app_database.dart';
import 'package:database/src/tables/tables.dart';
import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

part 'post_comments_dao.g.dart';

@DriftAccessor(tables: [PostDbComments])
class PostCommentsDao extends DatabaseAccessor<AppDatabase>
    with _$PostCommentsDaoMixin {
  PostCommentsDao(super.attachedDatabase);

  //Select operations
  Stream<List<PostDbComment>> watchPostComments(int postID) {
    return (select(postDbComments)..where((tbl) => tbl.postID.equals(postID)))
        .watch();
  }

  Future<List<PostDbComment>> getPostComments(int postID) async {
    return (select(postDbComments)..where((tbl) => tbl.postID.equals(postID)))
        .get();
  }

  //Insert operations
  Future<int> insertPostComment(CommentItem post) async {
    final PostDbCommentsCompanion item = PostDbCommentsCompanion(
      id: Value(post.id),
      postID: Value(post.postID),
      name: Value(post.name),
      email: Value(post.email),
      body: Value(post.body),
    );
    return into(postDbComments).insert(item);
  }

  Future<void> insertPostComments(List<CommentItem> comments) async {
    List<PostDbCommentsCompanion> postComments = [];
    for (final item in comments) {
      postComments.add(
        PostDbCommentsCompanion(
          id: Value(item.id),
          postID: Value(item.postID),
          name: Value(item.name),
          email: Value(item.email),
          body: Value(item.body),
        ),
      );
    }
    await batch((batch) {
      batch.insertAll(postDbComments, postComments);
    });
  }

  //Update operation
  Future<int> updatePost(CommentItem post) async {
    return await (update(postDbComments)..where((tbl) => tbl.id.equals(post.id)))
        .write(
      PostDbCommentsCompanion(
        name: Value(post.name),
        email: Value(post.email),
        body: Value(post.body),
      ),
    );
  }

  //Delete operations
  Future<int> deletePostCommentById(int commentID) async {
    return await (delete(postDbComments)..where((tbl) => tbl.id.equals(commentID)))
        .go();
  }

  Future<int> deleteAllPostComments() async {
    return await delete(postDbComments).go();
  }
}