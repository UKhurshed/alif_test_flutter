import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/post_comments/cubit/post_comments_cubit.dart';
import 'package:alif_test/screens/post_comments/widgets/widgets.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCommentsPage extends StatelessWidget {
  const PostCommentsPage({
    super.key,
    required this.postID,
  });

  final String postID;

  static const routeName = 'post_comments';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PostCommentsCubit(
          postsRepository: context.read<PostsRepository>(),
          commentsRepository: context.read<CommentsRepository>(),
          postID: int.parse(postID))
        ..getPostComments(),
      child: _PostCommentsView(
        postID: int.parse(postID),
      ),
    );
  }
}

class _PostCommentsView extends StatelessWidget {
  const _PostCommentsView({
    required this.postID,
  });

  final int postID;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final postCommentsResult =
        context.select((PostCommentsCubit cubit) => cubit.state.commentsResult);
    return Scaffold(
      appBar: EmptyAppBar(
        title: s.postComments(postID),
        actions: [
          IconButton(
            onPressed: () async {
              await openCommentActionSheet(context, postID);
            },
            icon: const Icon(
              Icons.add_circle,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              ResultBuilderImpl(
                result: postCommentsResult,
                loadingBuilder: (context) => const DefaultSkeletonView(
                  childCount: 5,
                  itemHeight: 150,
                ),
                successBuilder: (context, data) {
                  return PostCommentsListView(
                    comments: data,
                    postID: postID,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


