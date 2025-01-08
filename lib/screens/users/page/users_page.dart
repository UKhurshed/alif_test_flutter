import 'dart:developer';

import 'package:alif_test/core/router/app_routes.dart';
import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/users/cubit/users_cubit.dart';
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
    return Scaffold(
      appBar: const EmptyAppBar(
        title: 'Users',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              ResultBuilderImpl(
                result: usersResult,
                loadingBuilder: (context) => const UsersSkeletonView(),
                successBuilder: (context, data) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = data[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              UserPostsRoute(userID: item.id).push(context);
                            },
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(item.name),
                                    subtitle: Text(item.email),
                                    trailing: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(item.website),
                                        Text(item.phone)
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      log('location');
                                      UserLocationRoute(
                                        lat: item.address.lat,
                                        lng: item.address.lng,
                                      ).push(context);
                                    },
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.location_on),
                                        SizedBox(width: 4),
                                        Text('User Location')
                                      ],
                                    ),
                                  )
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UsersSkeletonView extends StatelessWidget {
  const UsersSkeletonView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(
          5,
          (value) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: DefaultShimmer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const SizedBox(
                  height: 60,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
