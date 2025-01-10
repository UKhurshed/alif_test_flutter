

import 'package:alif_test/core/router/app_routes.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/user_posts/cubit/user_posts_cubit.dart';
import 'package:alif_test/screens/user_posts/widgets/widgets.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostsListView extends StatelessWidget {
  const UserPostsListView({
    super.key,
    required this.userPosts,
    required this.userID,
  });

  final List<UserPost> userPosts;
  final int userID;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                PostCommentsRoute(postID: userPosts[index].id).push(context);
              },
              child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ).copyWith(left: 16, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                userPosts[index].title,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            const SizedBox(width: 12),
                            IconButton(
                              onPressed: () async {
                                await openPostActionSheet(
                                  context,
                                  userID,
                                  userPosts[index],
                                );
                              },
                              icon: const Icon(Icons.edit),
                            ),
                            BlocConsumer<UserPostsCubit, UserPostsState>(
                              listener: (context, state) {
                                if (state.deleteUserPostResult.isSuccess) {
                                } else if (state.deleteUserPostResult.isError) {
                                  showSnackBar(context,
                                      state.deleteUserPostResult.exception);
                                }
                              },
                              builder: (context, state) {
                                if (state.deleteUserPostResult.isLoading) {
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
                                            .read<UserPostsCubit>()
                                            .deleteUserPost(postID: userPosts[index].id);
                                      }, s.doYouReallyWantToDeleteThisPost);
                                    },
                                    icon: const Icon(Icons.delete),
                                  );
                                }
                              },
                            )
                          ],
                        ),
                        Text(
                          userPosts[index].body,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  )),
            ),
          );
        },
        childCount: userPosts.length,
      ),
    );
  }
}