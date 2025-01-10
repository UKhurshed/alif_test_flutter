import 'dart:developer';

import 'package:alif_test/core/router/app_routes.dart';
import 'package:alif_test/core/utils/result/result_builder_impl.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:alif_test/core/widgets/widgets.dart';
import 'package:alif_test/screens/users/cubit/app_settings/app_settings_cubit.dart';
import 'package:alif_test/screens/users/cubit/users/users_cubit.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/gen/assets.gen.dart';

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
                                      UserLocationRoute(
                                        lat: item.address.lat,
                                        lng: item.address.lng,
                                      ).push(context);
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(Icons.location_on),
                                        const SizedBox(width: 4),
                                        Text(s.userLocation)
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

Future<void> showLanguageModalSheet(BuildContext context) async {
  await showModalBottomSheet(
      context: context,
      builder: (context) {
        final s = S.of(context);
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(s.chooseLanguage),
                const SizedBox(height: 16),
                BlocBuilder<AppSettingsCubit, AppSettingsState>(
                  builder: (context, state) {
                    return ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final bool isSelected = state.appLanguage.index ==
                            AppLanguage.values[index].index;
                        return InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {
                            context
                                .read<AppSettingsCubit>()
                                .setLanguage(AppLanguage.values[index].locale);
                          },
                          child: LanguageItem(
                            title: index == 0 ? s.russian : s.english, //Тоҷикӣ
                            icon:
                                index == 0 ? Assets.icons.ru : Assets.icons.us,
                            isSelected: isSelected,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 16),
                      itemCount: AppLanguage.values.length,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      });
}

class LanguageItem extends StatelessWidget {
  const LanguageItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
  });

  final String title;
  final SvgGenImage icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isSelected
            ? Theme.of(context).primaryColor.withOpacity(0.85)
            : Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: icon.svg(height: 23, width: 23),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: isSelected ? Colors.white : Colors.black),
        ),
        trailing: isSelected
            ? const Icon(
                Icons.verified,
                color: Colors.lightGreenAccent,
              )
            : null,
      ),
    );
  }
}
