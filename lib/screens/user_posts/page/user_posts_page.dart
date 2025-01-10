import 'dart:developer';

import 'package:alif_test/core/router/app_routes.dart';
import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/user_posts/cubit/user_posts_cubit.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              PostCommentsRoute(postID: data[index].id)
                                  .push(context);
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          data[index].title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      IconButton(
                                        onPressed: () async {
                                          await openPostActionSheet(
                                            context,
                                            userID,
                                            data[index],
                                          );
                                        },
                                        icon: const Icon(Icons.edit),
                                      ),
                                      BlocConsumer<UserPostsCubit,
                                          UserPostsState>(
                                        listener: (context, state) {
                                          if (state
                                              .deleteUserPostResult.isSuccess) {
                                          } else if (state
                                              .deleteUserPostResult.isError) {
                                            showSnackBar(
                                                context,
                                                state.deleteUserPostResult
                                                    .exception);
                                          }
                                        },
                                        builder: (context, state) {
                                          if (state
                                              .deleteUserPostResult.isLoading) {
                                            return DefaultShimmer(
                                              child: IconButton(
                                                onPressed: () async {},
                                                icon: const Icon(Icons.delete),
                                              ),
                                            );
                                          } else {
                                            return IconButton(
                                              onPressed: () async {
                                                await showDeleteDialog(context,
                                                    () {
                                                  context
                                                      .read<UserPostsCubit>()
                                                      .deleteUserPost(
                                                          postID:
                                                              data[index].id);
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
                                    data[index].body,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            )),
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

Future<void> openPostActionSheet(BuildContext context, int userID,
    [UserPost? userPost]) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (sheetCtx) {
      return BlocProvider.value(
        value: context.read<UserPostsCubit>(),
        child: UpdateUserPostView(
          userPost: userPost,
          userID: userID,
          sheetCtx: sheetCtx,
        ),
      );
    },
  );
}

class UpdateUserPostView extends StatefulWidget {
  const UpdateUserPostView({
    super.key,
    required this.userPost,
    required this.userID,
    required this.sheetCtx,
  });

  final UserPost? userPost;
  final int userID;
  final BuildContext sheetCtx;

  @override
  State<UpdateUserPostView> createState() => _UpdateUserPostViewState();
}

class _UpdateUserPostViewState extends State<UpdateUserPostView> {
  late TextEditingController _titleController;
  late TextEditingController _bodyController;

  UserPost? get userPost => widget.userPost;

  bool get isCreateMode => userPost == null;

  int get userID => widget.userID;

  @override
  void initState() {
    super.initState();
    if (isCreateMode) {
      _titleController = TextEditingController();
      _bodyController = TextEditingController();
    } else {
      _titleController = TextEditingController(text: userPost?.title);
      _bodyController = TextEditingController(text: userPost?.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ).copyWith(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              isCreateMode ? s.createUserPost : s.editUserPost,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(
                labelText: 'Body',
              ),
            ),
            const SizedBox(height: 16),
            BlocConsumer<UserPostsCubit, UserPostsState>(
              listener: (context, state) {
                if (state.createUserPostResult.isSuccess) {
                  widget.sheetCtx.pop();
                } else if (state.createUserPostResult.isError) {
                  showSnackBar(context, state.createUserPostResult.exception);
                  widget.sheetCtx.pop();
                } else if (state.updateUserPostResult.isSuccess) {
                  widget.sheetCtx.pop();
                } else if (state.updateUserPostResult.isError) {
                  showSnackBar(context, state.updateUserPostResult.exception);
                  widget.sheetCtx.pop();
                }
              },
              builder: (context, state) {
                if (state.createUserPostResult.isLoading ||
                    state.updateUserPostResult.isLoading) {
                  return DefaultShimmer(
                    child: FilledButton(
                      onPressed: () {},
                      child: Text(isCreateMode ? s.create : s.update),
                    ),
                  );
                } else {
                  return FilledButton(
                    onPressed: () {
                      if (isCreateMode) {
                        context.read<UserPostsCubit>().createUserPost(
                              userPost: CreateUserPost(
                                  userID: userID,
                                  title: _titleController.text,
                                  body: _bodyController.text),
                            );
                      } else {
                        if (userPost != null) {
                          log('userID: $userID, id: ${userPost!.id}, title: ${_titleController.text}, body: ${_bodyController.text}');
                          context.read<UserPostsCubit>().updateUserPost(
                              userPost: UserPost(
                                  userID: userID,
                                  id: userPost!.id,
                                  title: _titleController.text,
                                  body: _bodyController.text),
                              postID: userPost!.id);
                        }
                      }
                    },
                    child: Text(isCreateMode ? s.create : s.update),
                  );
                }
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}


