// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $usersRoute,
    ];

RouteBase get $usersRoute => GoRouteData.$route(
      path: '/users',
      name: 'users',
      factory: $UsersRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'users/:userID',
          name: 'user_posts',
          factory: $UserPostsRouteExtension._fromState,
        ),
      ],
    );

extension $UsersRouteExtension on UsersRoute {
  static UsersRoute _fromState(GoRouterState state) => UsersRoute();

  String get location => GoRouteData.$location(
        '/users',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserPostsRouteExtension on UserPostsRoute {
  static UserPostsRoute _fromState(GoRouterState state) => UserPostsRoute(
        userID: int.parse(state.pathParameters['userID']!),
      );

  String get location => GoRouteData.$location(
        '/users/users/${Uri.encodeComponent(userID.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
