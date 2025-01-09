import 'package:database/src/init/app_database.dart';
import 'package:database/src/tables/tables.dart';
import 'package:domain/domain.dart';
import 'package:drift/drift.dart';

part 'user_posts_dao.g.dart';

@DriftAccessor(tables: [UserDBPosts])
class UserPostsDao extends DatabaseAccessor<AppDatabase>
    with _$UserPostsDaoMixin {
  UserPostsDao(super.attachedDatabase);

  //Select operations
  Stream<List<UserDBPost>> watchUserDBPost(int userID) {
    return (select(userDBPosts)..where((tbl) => tbl.userID.equals(userID)))
        .watch();
  }

  Future<List<UserDBPost>> getUserPost(int userID) async {
    return (select(userDBPosts)..where((tbl) => tbl.userID.equals(userID)))
        .get();
  }

  //Insert operations
  Future<int> insertUserPost(UserPost post) async {
    final UserDBPostsCompanion item = UserDBPostsCompanion(
      id: Value(post.id),
      userID: Value(post.userID),
      title: Value(post.title),
      body: Value(post.body),
    );
    return into(userDBPosts).insert(item);
  }

  Future<void> insertUserPosts(List<UserPost> posts) async {
    List<UserDBPostsCompanion> userPosts = [];
    for (final item in posts) {
      userPosts.add(
        UserDBPostsCompanion(
          id: Value(item.id),
          userID: Value(item.userID),
          title: Value(item.title),
          body: Value(item.body),
        ),
      );
    }
    await batch((batch) {
      batch.insertAll(userDBPosts, userPosts);
    });
  }

  //Update operation
  Future<int> updatePost(UserPost post) async {
    return await (update(userDBPosts)..where((tbl) => tbl.id.equals(post.id)))
        .write(
      UserDBPostsCompanion(
        title: Value(post.title),
        body: Value(post.body),
      ),
    );
  }

  //Delete operations
  Future<int> deleteUserPostById(int postID) async {
    return await (delete(userDBPosts)..where((tbl) => tbl.id.equals(postID)))
        .go();
  }

  Future<int> deleteAllUserPosts() async {
    return await delete(userDBPosts).go();
  }
}
