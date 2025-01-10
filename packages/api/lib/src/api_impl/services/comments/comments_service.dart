import 'package:api/api.dart';
import 'package:chopper/chopper.dart';

part 'comments_service.chopper.dart';

@ChopperApi(baseUrl: 'comments/')
abstract class CommentsService extends ChopperService {
  static CommentsService create([ChopperClient? client]) =>
      _$CommentsService(client);

  @Put(path: '{commentId}')
  Future<Response<CommentResponse>> updatePostComment(
    @Path('commentId') int commentID,
    @Body() UpdatePostCommentRequestBody body,
  );

  @Delete(path: '{commentId}')
  Future<Response<void>> deletePostComment(
    @Path('commentId') int commentID,
  );
}
