import 'package:alif_test/core/router/app_routes.dart';
import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/user_posts/cubit/user_posts_cubit.dart';
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
      )..getUserPosts(userID: int.parse(userID)),
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
    final userPostsResult =
        context.select((UserPostsCubit cubit) => cubit.state.userPostsResult);
    return Scaffold(
      appBar: AppBar(
        title: Text('User #$userID posts'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              ResultBuilderImpl(
                result: userPostsResult,
                loadingBuilder: (context) => const PostSkeletonView(),
                successBuilder: (context, data) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: InkWell(
                            onTap: () {
                              PostCommentsRoute(postID: data[index].id)
                                  .push(context);
                            },
                            child: Card(
                              child: ListTile(
                                title: Text(
                                  data[index].title,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                subtitle: Text(
                                  data[index].body,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                // contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: data.length,
                    ),
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

class PostSkeletonView extends StatelessWidget {
  const PostSkeletonView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(
          8,
          (value) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextShimmer(
                  width: 120,
                  height: 30,
                ),
                SizedBox(height: 8),
                DefaultTextShimmer(
                  width: 200,
                  height: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
