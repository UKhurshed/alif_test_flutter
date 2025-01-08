import 'package:api/api.dart';
import 'package:domain/domain.dart';
import 'package:repository/src/mappers/mappers.dart';
import 'package:repository/src/util/request_handler.dart';

class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl({
    required UsersService usersService,
  }) : _service = usersService;

  final UsersService _service;

  @override
  Future<List<UserItem>> getUsers() async {
    final response = await handleRequest<List<UsersResponse>, List<UserItem>>(
      () => _service.users(),
      (input) => input.asDomainEntity,
    );

    return response;
  }

  @override
  Future<List<UserPost>> getUserPosts({required int userID}) async {
    final response =
        await handleRequest<List<UserPostResponse>, List<UserPost>>(
      () => _service.userPosts(userID),
      (input) => input.asDomainEntity,
    );

    return response;
  }
}
