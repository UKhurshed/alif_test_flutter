// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_comment_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePostCommentRequestBodyImpl _$$CreatePostCommentRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePostCommentRequestBodyImpl(
      postID: (json['postId'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$CreatePostCommentRequestBodyImplToJson(
        _$CreatePostCommentRequestBodyImpl instance) =>
    <String, dynamic>{
      'postId': instance.postID,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
