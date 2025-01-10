import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/post_comments/cubit/post_comments_cubit.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
                                      SizedBox(width: 16),
                                      Expanded(
                                        child: Text(
                                          data[index].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      IconButton(
                                        onPressed: () async {
                                          await openCommentActionSheet(
                                            context,
                                            postID,
                                            data[index],
                                          );
                                        },
                                        icon: const Icon(Icons.edit),
                                      ),
                                      BlocConsumer<PostCommentsCubit,
                                          PostCommentsState>(
                                        listener: (context, state) {
                                          if (state.deletePostCommentResult
                                              .isSuccess) {
                                          } else if (state
                                              .deletePostCommentResult.isError) {
                                            showSnackBar(
                                                context,
                                                state.deletePostCommentResult
                                                    .exception);
                                          }
                                        },
                                        builder: (context, state) {
                                          if (state.deletePostCommentResult
                                              .isLoading) {
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
                                                      .read<PostCommentsCubit>()
                                                      .deletePostComment(
                                                          commentID:
                                                              data[index].id);
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
                                      data[index].body,
                                      style:
                                          Theme.of(context).textTheme.titleMedium,
                                    ),

                                    subtitle: Text(
                                      data[index].email,
                                      style:
                                          Theme.of(context).textTheme.labelLarge,
                                    ),
                                    // contentPadding: EdgeInsets.zero,
                                  ),
                                ],
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

Future<void> openCommentActionSheet(BuildContext context, int userID,
    [CommentItem? commentItem]) async {
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (sheetCtx) {
      return BlocProvider.value(
        value: context.read<PostCommentsCubit>(),
        child: UpdatePostCommentView(
          commentItem: commentItem,
          postID: userID,
          sheetCtx: sheetCtx,
        ),
      );
    },
  );
}

class UpdatePostCommentView extends StatefulWidget {
  const UpdatePostCommentView({
    super.key,
    required this.commentItem,
    required this.postID,
    required this.sheetCtx,
  });

  final CommentItem? commentItem;
  final int postID;
  final BuildContext sheetCtx;

  @override
  State<UpdatePostCommentView> createState() => _UpdatePostCommentViewState();
}

class _UpdatePostCommentViewState extends State<UpdatePostCommentView> {
  late TextEditingController _nameController;
  late TextEditingController _bodyController;
  late TextEditingController _emailController;

  CommentItem? get commentItem => widget.commentItem;

  bool get isCreateMode => commentItem == null;

  int get postID => widget.postID;

  @override
  void initState() {
    super.initState();
    if (isCreateMode) {
      _nameController = TextEditingController();
      _bodyController = TextEditingController();
      _emailController = TextEditingController();
    } else {
      _nameController = TextEditingController(text: commentItem?.name);
      _bodyController = TextEditingController(text: commentItem?.body);
      _emailController = TextEditingController(text: commentItem?.email);
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
              controller: _nameController,
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
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16),
            BlocConsumer<PostCommentsCubit, PostCommentsState>(
              listener: (context, state) {
                if (state.createPostCommentResult.isSuccess) {
                  widget.sheetCtx.pop();
                } else if (state.createPostCommentResult.isError) {
                  showSnackBar(
                      context, state.createPostCommentResult.exception);
                  widget.sheetCtx.pop();
                } else if (state.updatePostCommentResult.isSuccess) {
                  widget.sheetCtx.pop();
                } else if (state.updatePostCommentResult.isError) {
                  showSnackBar(
                      context, state.updatePostCommentResult.exception);
                  widget.sheetCtx.pop();
                }
              },
              builder: (context, state) {
                if (state.createPostCommentResult.isLoading ||
                    state.updatePostCommentResult.isLoading) {
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
                        context.read<PostCommentsCubit>().createPostComment(
                              postID: postID,
                              commentItem: CreatePostComment(
                                postID: postID,
                                email: _nameController.text,
                                body: _bodyController.text,
                                name: _nameController.text,
                              ),
                            );
                      } else {
                        if (commentItem != null) {
                          context.read<PostCommentsCubit>().updatePostComment(
                              commentItem: CreatePostComment(
                                postID: postID,
                                name: _nameController.text,
                                body: _bodyController.text,
                                email: _emailController.text,
                              ),
                              commentID: commentItem!.id);
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
