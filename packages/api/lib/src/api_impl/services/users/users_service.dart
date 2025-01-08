import 'package:api/src/api_impl/models/user_posts/responses/user_post_response.dart';
import 'package:api/src/api_impl/models/users/users.dart';
import 'package:chopper/chopper.dart';

part 'users_service.chopper.dart';

@ChopperApi(baseUrl: 'users/')
abstract class UsersService extends ChopperService {
  static UsersService create([ChopperClient? client]) => _$UsersService(client);

  @Get()
  Future<Response<List<UsersResponse>>> users();

  @Get(path: '{userId}/posts')
  Future<Response<List<UserPostResponse>>> userPosts(
    @Path('userId') int userId,
  );
}
