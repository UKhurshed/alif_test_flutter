// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPostResponseImpl _$$UserPostResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserPostResponseImpl(
      id: (json['id'] as num).toInt(),
      userID: (json['userId'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$UserPostResponseImplToJson(
        _$UserPostResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userID,
      'title': instance.title,
      'body': instance.body,
    };
