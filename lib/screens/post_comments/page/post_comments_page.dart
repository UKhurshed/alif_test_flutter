import 'package:alif_test/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PostCommentsPage extends StatelessWidget {
  const PostCommentsPage({
    super.key,
    required this.postID,
  });

  final String postID;

  static const routeName = 'post_comments';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(title: 'Post #$postID comments'),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [],
        ),
      ),
    );
  }
}
