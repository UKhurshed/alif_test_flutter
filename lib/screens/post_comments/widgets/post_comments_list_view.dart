import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/post_comments/cubit/post_comments_cubit.dart';
import 'package:alif_test/screens/post_comments/widgets/widgets.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCommentsListView extends StatelessWidget {
  const PostCommentsListView({
    super.key,
    required this.comments,
    required this.postID,
  });

  final List<CommentItem> comments;
  final int postID;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            comments[index].name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(width: 12),
                        IconButton(
                          onPressed: () async {
                            await openCommentActionSheet(
                              context,
                              postID,
                              comments[index],
                            );
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        BlocConsumer<PostCommentsCubit, PostCommentsState>(
                          listener: (context, state) {
                            if (state.deletePostCommentResult.isSuccess) {
                            } else if (state.deletePostCommentResult.isError) {
                              showSnackBar(context,
                                  state.deletePostCommentResult.exception);
                            }
                          },
                          builder: (context, state) {
                            if (state.deletePostCommentResult.isLoading) {
                              return DefaultShimmer(
                                child: IconButton(
                                  onPressed: () async {},
                                  icon: const Icon(Icons.delete),
                                ),
                              );
                            } else {
                              return IconButton(
                                onPressed: () async {
                                  await showDeleteDialog(context, () {
                                    context
                                        .read<PostCommentsCubit>()
                                        .deletePostComment(
                                        commentID: comments[index].id);
                                  }, s.doYouReallyWantToDeleteThisComment);
                                },
                                icon: const Icon(Icons.delete),
                              );
                            }
                          },
                        )
                      ],
                    ),
                    ListTile(
                      title: Text(
                        comments[index].body,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      subtitle: Text(
                        comments[index].email,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      // contentPadding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        childCount: comments.length,
      ),
    );
  }
}