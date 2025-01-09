// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_post_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserPostRequestBodyImpl _$$CreateUserPostRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserPostRequestBodyImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      userID: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateUserPostRequestBodyImplToJson(
        _$CreateUserPostRequestBodyImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userID,
    };
