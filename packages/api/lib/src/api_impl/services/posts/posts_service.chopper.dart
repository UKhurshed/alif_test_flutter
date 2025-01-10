// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$PostsService extends PostsService {
  _$PostsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = PostsService;

  @override
  Future<Response<List<CommentResponse>>> commentsByPostId(int postID) {
    final Uri $url = Uri.parse('posts/${postID}/comments');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<CommentResponse>, CommentResponse>($request);
  }

  @override
  Future<Response<UserPostResponse>> createUserPost(
      CreateUserPostRequestBody body) {
    final Uri $url = Uri.parse('posts/');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserPostResponse, UserPostResponse>($request);
  }

  @override
  Future<Response<UserPostResponse>> updateUserPost(
    int postID,
    UpdateUserPostRequestBody body,
  ) {
    final Uri $url = Uri.parse('posts/${postID}');
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
  Future<Response<void>> deleteUserPost(int postID) {
    final Uri $url = Uri.parse('posts/${postID}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<void, void>($request);
  }

  @override
  Future<Response<CommentResponse>> createPostComment(
    int postID,
    CreatePostCommentRequestBody body,
  ) {
    final Uri $url = Uri.parse('posts/${postID}/comments');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CommentResponse, CommentResponse>($request);
  }
}
