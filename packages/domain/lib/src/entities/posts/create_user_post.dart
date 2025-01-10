import 'package:equatable/equatable.dart';

class CreateUserPost extends Equatable {
  final int userID;
  final String title;
  final String body;

  const CreateUserPost({
    required this.userID,
    required this.title,
    required this.body,
  });

  @override
  List<Object?> get props => [
        userID,
        title,
        body,
      ];
}
