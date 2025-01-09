// import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:database/database.dart';
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:alif_test/core/router/router.dart' as router;
import 'package:ui_kit/ui_kit.dart';
import 'package:api/api.dart';
import 'package:repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final apiClient = ApiClient(
    isRelease: kReleaseMode,
    interceptors: [
      // if (!kReleaseMode) ChuckerChopperInterceptor(),
    ],
  );

  late final appDatabase = AppDatabase();

  late final usersRepository = UsersRepositoryImpl(
    usersService: apiClient.getService(),
    appDatabase: appDatabase,
  );

  late final postsRepository = PostsRepositoryImpl(
    postsService: apiClient.getService(),
  );



  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UsersRepository>.value(value: usersRepository),
        RepositoryProvider<PostsRepository>.value(value: postsRepository),
        RepositoryProvider<AppDatabase>.value(value: appDatabase),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'Alif Test',
            debugShowCheckedModeBanner: false,
            routerConfig: router.config,
            theme: AppTheme.getThemeData(),
          );
        },
      ),
    );
  }
}
