// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCommentResponseImpl _$$CreateCommentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCommentResponseImpl(
      id: (json['id'] as num).toInt(),
      postID: json['postId'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$CreateCommentResponseImplToJson(
        _$CreateCommentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postID,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
