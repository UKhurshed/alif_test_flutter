import 'package:equatable/equatable.dart';

class CreatePostComment extends Equatable {
  final int postID;
  final String name;
  final String email;
  final String body;

  const CreatePostComment({
    required this.postID,
    required this.name,
    required this.email,
    required this.body,
  });

  @override
  List<Object?> get props => [
        postID,
        name,
        email,
        body,
      ];
}
