import 'package:domain/src/entities/users/user_item.dart';

abstract class UsersRepository {
  Future<List<UserItem>> getUsers();
}
