import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/users/cubit/users/users_cubit.dart';
import 'package:alif_test/screens/users/widgets/widgets.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  static const routeName = 'users';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(
        usersRepository: context.read<UsersRepository>(),
      )..getUsers(),
      child: const _UsersView(),
    );
  }
}

class _UsersView extends StatelessWidget {
  const _UsersView();

  @override
  Widget build(BuildContext context) {
    final usersResult =
        context.select((UsersCubit cubit) => cubit.state.usersResult);
    final s = S.of(context);
    return Scaffold(
      appBar: EmptyAppBar(
        title: s.users,
        actions: [
          IconButton(
            onPressed: () async {
              await showLanguageModalSheet(context);
            },
            icon: const Icon(Icons.language),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              ResultBuilderImpl(
                result: usersResult,
                loadingBuilder: (context) => const DefaultSkeletonView(),
                errorBuilder: (context, exception, trace) {
                  return ErrorBuilderView(
                    exception: exception,
                    onPressed: () {
                      context.read<UsersCubit>().getUsers();
                    },
                  );
                },
                successBuilder: (context, data) {
                  return UsersListView(
                    users: data,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
