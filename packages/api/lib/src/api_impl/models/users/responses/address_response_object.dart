import 'package:api/src/api_impl/models/users/responses/geo_response_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_response_object.freezed.dart';

part 'address_response_object.g.dart';

@freezed
class AddressResponseObject with _$AddressResponseObject {
  const factory AddressResponseObject({
    @JsonKey(name: 'street') required String street,
    @JsonKey(name: 'suite') required String suite,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'zipcode') required String zipcode,
    @JsonKey(name: 'geo') required GeoResponseObject geo,
  }) = _AddressResponseObject;

  factory AddressResponseObject.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseObjectFromJson(json);
}