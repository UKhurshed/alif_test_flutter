
import 'package:api/src/api_impl/models/users/users.dart';
import 'package:chopper/chopper.dart';

part 'users_service.chopper.dart';

@ChopperApi()
abstract class UsersService extends ChopperService {
  static UsersService create([ChopperClient? client]) => _$UsersService(client);

  @Get(path: '/users')
  Future<Response<List<UsersResponse>>> users();
}