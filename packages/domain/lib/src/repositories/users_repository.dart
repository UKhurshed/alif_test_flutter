import 'package:domain/domain.dart';

abstract class UsersRepository {
  Future<List<UserItem>> getUsers();

  Future<List<UserPost>> getUserPosts({
    required int userID,
  });

  Stream<List<UserPost>> watchUserPosts({required int userID});
}
