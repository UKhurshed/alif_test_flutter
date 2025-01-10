import 'package:api/api.dart';
import 'package:chopper/chopper.dart';

part 'posts_service.chopper.dart';

@ChopperApi(baseUrl: 'posts/')
abstract class PostsService extends ChopperService {
  static PostsService create([ChopperClient? client]) => _$PostsService(client);

  @Get(path: '{postId}/comments')
  Future<Response<List<CommentResponse>>> commentsByPostId(
    @Path('postId') int postID,
  );

  @Post()
  Future<Response<UserPostResponse>> createUserPost(
    @Body() CreateUserPostRequestBody body,
  );

  @Put(path: '{postId}')
  Future<Response<UserPostResponse>> updateUserPost(
    @Path('postId') int postID,
    @Body() UpdateUserPostRequestBody body,
  );

  @Delete(path: '{postId}')
  Future<Response<void>> deleteUserPost(
    @Path('postId') int postID,
  );

  @Post(path: '{postId}/comments')
  Future<Response<CreateCommentResponse>> createPostComment(
    @Path('postId') int postID,
    @Body() CreatePostCommentRequestBody body,
  );
}
