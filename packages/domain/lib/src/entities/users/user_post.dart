import 'package:equatable/equatable.dart';

class UserPost extends Equatable {
  final int userID;
  final int id;
  final String title;
  final String body;

  const UserPost({
    required this.userID,
    required this.id,
    required this.title,
    required this.body,
  });

  @override
  List<Object?> get props => [
        id,
        userID,
        title,
        body,
      ];
}
