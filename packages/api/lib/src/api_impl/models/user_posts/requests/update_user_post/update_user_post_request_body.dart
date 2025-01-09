import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_post_request_body.freezed.dart';

part 'update_user_post_request_body.g.dart';

@freezed
class UpdateUserPostRequestBody with _$UpdateUserPostRequestBody {
  const factory UpdateUserPostRequestBody({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'userId') required int userID,
    @JsonKey(name: 'id') required int id,
  }) = _CreateUserPostRequestBody;

  factory UpdateUserPostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserPostRequestBodyFromJson(json);
}
