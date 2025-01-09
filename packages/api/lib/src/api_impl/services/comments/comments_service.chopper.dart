// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CommentsService extends CommentsService {
  _$CommentsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CommentsService;

  @override
  Future<Response<UserPostResponse>> updatePostComment(
    int commentID,
    UpdateUserPostRequestBody body,
  ) {
    final Uri $url = Uri.parse('comments/${commentID}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserPostResponse, UserPostResponse>($request);
  }

  @override
  Future<Response<void>> deletePostComment(int commentID) {
    final Uri $url = Uri.parse('comments/${commentID}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<void, void>($request);
  }
}
