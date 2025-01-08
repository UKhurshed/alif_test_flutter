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
    final Uri $url = Uri.parse('posts/${postID}/posts');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<CommentResponse>, CommentResponse>($request);
  }
}
