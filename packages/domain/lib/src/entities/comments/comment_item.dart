import 'package:equatable/equatable.dart';

class CommentItem extends Equatable {
  final int postID;
  final int id;
  final String name;
  final String email;
  final String body;

  const CommentItem({
    required this.postID,
    required this.id,
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
