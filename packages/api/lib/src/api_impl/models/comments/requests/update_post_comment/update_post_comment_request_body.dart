
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_post_comment_request_body.freezed.dart';
part 'update_post_comment_request_body.g.dart';

@freezed
class UpdatePostCommentRequestBody with _$UpdatePostCommentRequestBody {
  const factory UpdatePostCommentRequestBody({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'postId') required int postID,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'body') required String body,
  }) = _UpdatePostCommentRequestBody;

  factory UpdatePostCommentRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdatePostCommentRequestBodyFromJson(json);
}