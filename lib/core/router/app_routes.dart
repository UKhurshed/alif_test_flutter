import 'package:alif_test/screens/user_location/page/user_location_page.dart';
import 'package:alif_test/screens/user_posts/page/user_posts_page.dart';
import 'package:alif_test/screens/users/page/users_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<UsersRoute>(
  path: '/users',
  name: UsersPage.routeName,
  routes: [
    TypedGoRoute<UserPostsRoute>(
      path: 'users/:userID',
      name: UserPostsPage.routeName,
    ),
    TypedGoRoute<UserLocationRoute>(
      path: 'user_location/:lat/:lng',
      name: UserLocationPage.routeName,
    )
  ],
)
@immutable
class UsersRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UsersPage();
  }
}

@immutable
class UserPostsRoute extends GoRouteData {
  final int userID;

  const UserPostsRoute({
    required this.userID,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserPostsPage(userID: userID.toString());
  }
}

@immutable
class UserLocationRoute extends GoRouteData {
  final String lat;
  final String lng;

  const UserLocationRoute({
    required this.lat,
    required this.lng,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserLocationPage(
      lat: lat,
      lng: lat,
    );
  }
}
