import 'package:api/src/api_impl/models/users/responses/address_response_object.dart';
import 'package:api/src/api_impl/models/users/responses/company_response_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_response.freezed.dart';

part 'users_response.g.dart';

@freezed
class UsersResponse with _$UsersResponse {
  const factory UsersResponse({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'username') required String userName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'address') required AddressResponseObject address,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'website') required String website,
    @JsonKey(name: 'company') required CompanyResponseObject company,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
}
