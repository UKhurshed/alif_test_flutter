import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/user_posts/cubit/user_posts_cubit.dart';
import 'package:alif_test/screens/user_posts/widgets/user_posts_list_view.dart';
import 'package:alif_test/screens/user_posts/widgets/widgets.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostsPage extends StatelessWidget {
  const UserPostsPage({
    super.key,
    required this.userID,
  });

  static const routeName = 'user_posts';

  final String userID;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserPostsCubit(
          userRepository: context.read<UsersRepository>(),
          postsRepository: context.read<PostsRepository>(),
          userID: int.parse(userID))
        ..getUserPosts(),
      child: _UserPostsView(
        userID: int.parse(userID),
      ),
    );
  }
}

class _UserPostsView extends StatelessWidget {
  const _UserPostsView({
    required this.userID,
  });

  final int userID;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final userPostsResult =
        context.select((UserPostsCubit cubit) => cubit.state.userPostsResult);
    return Scaffold(
      appBar: EmptyAppBar(
        title: s.userPosts(userID),
        actions: [
          IconButton(
            onPressed: () async {
              await openPostActionSheet(context, userID);
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
                result: userPostsResult,
                loadingBuilder: (context) => const DefaultSkeletonView(
                  childCount: 8,
                  itemHeight: 150,
                ),
                errorBuilder: (context, exception, trace) {
                  return ErrorBuilderView(
                    exception: exception,
                    onPressed: () {
                      context.read<UserPostsCubit>().getUserPosts();
                    },
                  );
                },
                successBuilder: (context, data) {
                  return UserPostsListView(
                    userPosts: data,
                    userID: userID,
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

