
import 'package:alif_test/core/router/app_routes.dart';
import 'package:alif_test/core/utils/utils.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class UsersListView extends StatelessWidget {
  const UsersListView({
    super.key,
    required this.users,
  });

  final List<UserItem> users;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          final item = users[index];
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text(item.website), Text(item.phone)],
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
        childCount: users.length,
      ),
    );
  }
}
