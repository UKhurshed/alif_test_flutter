import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_response.freezed.dart';

part 'comment_response.g.dart';

@freezed
class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'postId') required int postID,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'body') required String body,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}