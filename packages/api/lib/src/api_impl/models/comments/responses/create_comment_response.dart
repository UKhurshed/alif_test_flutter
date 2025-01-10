import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_response.freezed.dart';

part 'create_comment_response.g.dart';

@freezed
class CreateCommentResponse with _$CreateCommentResponse {
  const factory CreateCommentResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'postId') required String postID,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'body') required String body,
  }) = _CreateCommentResponse;

  factory CreateCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentResponseFromJson(json);
}