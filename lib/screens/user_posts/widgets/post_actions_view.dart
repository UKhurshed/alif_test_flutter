import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/user_posts/cubit/user_posts_cubit.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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


