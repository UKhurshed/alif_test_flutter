import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_post_request_body.freezed.dart';

part 'create_user_post_request_body.g.dart';

@freezed
class CreateUserPostRequestBody with _$CreateUserPostRequestBody {
  const factory CreateUserPostRequestBody({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'userId') required int userID,
  }) = _CreateUserPostRequestBody;

  factory CreateUserPostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateUserPostRequestBodyFromJson(json);
}
