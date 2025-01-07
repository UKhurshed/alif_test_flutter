import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_response_object.freezed.dart';

part 'company_response_object.g.dart';

@freezed
class CompanyResponseObject with _$CompanyResponseObject {
  const factory CompanyResponseObject({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'catchPhrase') required String catchPhrase,
    @JsonKey(name: 'bs') required String bs,
  }) = _CompanyResponseObject;

  factory CompanyResponseObject.fromJson(Map<String, dynamic> json) =>
      _$CompanyResponseObjectFromJson(json);
}