// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressResponseObjectImpl _$$AddressResponseObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressResponseObjectImpl(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoResponseObject.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressResponseObjectImplToJson(
        _$AddressResponseObjectImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
