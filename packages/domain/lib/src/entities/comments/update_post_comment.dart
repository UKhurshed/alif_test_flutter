import 'package:equatable/equatable.dart';

class UpdatePostComment extends Equatable {
  final int id;
  final int postID;
  final String name;
  final String email;
  final String body;

  const UpdatePostComment({
    required this.id,
    required this.postID,
    required this.name,
    required this.email,
    required this.body,
  });

  @override
  List<Object?> get props => [
        id,
        postID,
        name,
        email,
        body,
      ];
}
