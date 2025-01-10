import 'dart:developer';

import 'package:api/api.dart';
import 'package:database/database.dart';
import 'package:domain/domain.dart';
import 'package:repository/src/mappers/mappers.dart';
import 'package:repository/src/util/request_handler.dart';

class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl({
    required UsersService usersService,
    required AppDatabase appDatabase,
  })  : _service = usersService,
        _appDatabase = appDatabase;

  final UsersService _service;
  final AppDatabase _appDatabase;

  @override
  Future<List<UserItem>> getUsers() async {
    final usersFromDB = await _appDatabase.userItemsDao.getUserDBItems();
    if (usersFromDB.isEmpty) {
      final response = await handleRequest<List<UsersResponse>, List<UserItem>>(
        () => _service.users(),
        (input) {
          final domainEntity = input.asDomainEntity;
          _appDatabase.userItemsDao.insertUsers(domainEntity);
          return domainEntity;
        },
      );
      return response;
    } else {
      log('getUsers from DB: $usersFromDB');
      return usersFromDB.asDomainFromDB;
    }
  }

  @override
  Future<List<UserPost>> getUserPosts({
    required int userID,
  }) async {
    final userPostsDB = await _appDatabase.userPostsDao.getUserPost(userID);
    if (userPostsDB.isEmpty) {
      final response =
          await handleRequest<List<UserPostResponse>, List<UserPost>>(
        () => _service.userPosts(userID),
        (input) {
          final domainEntity = input.asDomainEntity;
          _appDatabase.userPostsDao.insertUserPosts(domainEntity);
          return input.asDomainEntity;
        },
      );

      return response;
    } else {
      log('getUserPosts from DB: $userPostsDB');
      return userPostsDB.asDomainFromDB;
    }
  }

  @override
  Stream<List<UserPost>> watchUserPosts({
    required int userID,
  }) {
    return _appDatabase.userPostsDao.watchUserDBPost(userID).map((list) {
      return list.map((userDBPosts) {
        return UserPost(
          id: userDBPosts.id,
          title: userDBPosts.title,
          body: userDBPosts.body,
          userID: userDBPosts.userID,
        );
      }).toList();
    });
  }
}
