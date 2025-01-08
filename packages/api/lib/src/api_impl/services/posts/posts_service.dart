import 'package:api/src/api_impl/models/comments/responses/comment_response.dart';
import 'package:chopper/chopper.dart';

part 'posts_service.chopper.dart';

@ChopperApi(baseUrl: 'posts/')
abstract class PostsService extends ChopperService {
  static PostsService create([ChopperClient? client]) =>
      _$PostsService(client);

  @Get(path: '{postId}/posts')
  Future<Response<List<CommentResponse>>> commentsByPostId(
    @Path('postId') int postID,
  );
}
