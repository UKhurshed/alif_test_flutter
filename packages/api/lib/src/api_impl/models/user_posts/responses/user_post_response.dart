import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post_response.freezed.dart';

part 'user_post_response.g.dart';

@freezed
class UserPostResponse with _$UserPostResponse {
  const factory UserPostResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'userId') required int userID,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
  }) = _UserPostResponse;

  factory UserPostResponse.fromJson(Map<String, dynamic> json) =>
      _$UserPostResponseFromJson(json);
}