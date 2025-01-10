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
          path: 'users_post/:userID',
          name: 'user_posts',
          factory: $UserPostsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'post_comments/:postID',
          name: 'post_comments',
          factory: $PostCommentsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'user_location/:lat/:lng',
          name: 'user_location',
          factory: $UserLocationRouteExtension._fromState,
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
        '/users/users_post/${Uri.encodeComponent(userID.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PostCommentsRouteExtension on PostCommentsRoute {
  static PostCommentsRoute _fromState(GoRouterState state) => PostCommentsRoute(
        postID: int.parse(state.pathParameters['postID']!),
      );

  String get location => GoRouteData.$location(
        '/users/post_comments/${Uri.encodeComponent(postID.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserLocationRouteExtension on UserLocationRoute {
  static UserLocationRoute _fromState(GoRouterState state) => UserLocationRoute(
        lat: state.pathParameters['lat']!,
        lng: state.pathParameters['lng']!,
      );

  String get location => GoRouteData.$location(
        '/users/user_location/${Uri.encodeComponent(lat)}/${Uri.encodeComponent(lng)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
