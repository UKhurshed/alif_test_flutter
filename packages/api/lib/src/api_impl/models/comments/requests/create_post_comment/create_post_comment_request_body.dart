

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_comment_request_body.freezed.dart';
part 'create_post_comment_request_body.g.dart';

@freezed
class CreatePostCommentRequestBody with _$CreatePostCommentRequestBody {
  const factory CreatePostCommentRequestBody({
    @JsonKey(name: 'postId') required int postID,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'body') required String body,
  }) = _CreatePostCommentRequestBody;

  factory CreatePostCommentRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreatePostCommentRequestBodyFromJson(json);
}