import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_response_object.freezed.dart';

part 'geo_response_object.g.dart';

@freezed
class GeoResponseObject with _$GeoResponseObject {
  const factory GeoResponseObject({
    @JsonKey(name: 'lat') required String lat,
    @JsonKey(name: 'lng') required String lng,
  }) = _GeoResponseObject;

  factory GeoResponseObject.fromJson(Map<String, dynamic> json) =>
      _$GeoResponseObjectFromJson(json);
}
