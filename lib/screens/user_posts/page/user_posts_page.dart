import 'package:flutter/material.dart';

class UserPostsPage extends StatelessWidget {
  const UserPostsPage({
    super.key,
    required this.userID,
  });

  static const routeName = 'user_posts';

  final String userID;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
