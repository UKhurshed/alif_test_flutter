import 'package:api/api.dart';
import 'package:domain/domain.dart';
import 'package:repository/src/mappers/users/user_item_mapper.dart';
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
}
