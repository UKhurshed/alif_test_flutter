import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class UserLocationPage extends StatefulWidget {
  const UserLocationPage({
    super.key,
    required this.lat,
    required this.lng,
  });

  final String lat;
  final String lng;

  static const routeName = 'user_location';

  @override
  State<UserLocationPage> createState() => _UserLocationPageState();
}

class _UserLocationPageState extends State<UserLocationPage> {
  late YandexMapController _mapController;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: YandexMap(
                onMapCreated: (controller) async {
                  _mapController = controller;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
