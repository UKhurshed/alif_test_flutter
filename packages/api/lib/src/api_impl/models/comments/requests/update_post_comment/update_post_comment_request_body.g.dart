// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post_comment_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatePostCommentRequestBodyImpl _$$UpdatePostCommentRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePostCommentRequestBodyImpl(
      id: (json['id'] as num).toInt(),
      postID: (json['postId'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$UpdatePostCommentRequestBodyImplToJson(
        _$UpdatePostCommentRequestBodyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postID,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
