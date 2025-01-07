// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommonErrorResponseImpl _$$CommonErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CommonErrorResponseImpl(
      detail:
          DetailErrorResponse.fromJson(json['detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommonErrorResponseImplToJson(
        _$CommonErrorResponseImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };

_$DetailErrorResponseImpl _$$DetailErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailErrorResponseImpl(
      errorMessageResponse: ErrorMessageResponse.fromJson(
          json['error_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailErrorResponseImplToJson(
        _$DetailErrorResponseImpl instance) =>
    <String, dynamic>{
      'error_message': instance.errorMessageResponse,
    };

_$ErrorMessageResponseImpl _$$ErrorMessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorMessageResponseImpl(
      en: json['en'] as String,
      ru: json['ru'] as String,
      tj: json['tj'] as String,
    );

Map<String, dynamic> _$$ErrorMessageResponseImplToJson(
        _$ErrorMessageResponseImpl instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ru': instance.ru,
      'tj': instance.tj,
    };
