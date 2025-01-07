import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_error_response.freezed.dart';
part 'common_error_response.g.dart';


@freezed
class CommonErrorResponse with _$CommonErrorResponse {
  const factory CommonErrorResponse({
    @JsonKey(name: 'detail') required DetailErrorResponse detail,
  }) = _CommonErrorResponse;

  factory CommonErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$CommonErrorResponseFromJson(json);
}


@freezed
class DetailErrorResponse with _$DetailErrorResponse {
  const factory DetailErrorResponse({
    @JsonKey(name: 'error_message') required ErrorMessageResponse errorMessageResponse,
  }) = _DetailErrorResponse;

  factory DetailErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailErrorResponseFromJson(json);
}

@freezed
class ErrorMessageResponse with _$ErrorMessageResponse {
  const factory ErrorMessageResponse({
    @JsonKey(name: 'en') required String en,
    @JsonKey(name: 'ru') required String ru,
    @JsonKey(name: 'tj') required String tj,
  }) = _ErrorMessageResponse;

  factory ErrorMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorMessageResponseFromJson(json);
}