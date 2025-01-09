import 'package:alif_test/screens/user_location/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/gen/assets.gen.dart';
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

  PlacemarkMapObject? _userMarker;

  String get lat => widget.lat;

  String get lng => widget.lng;

  final animation =
      const MapAnimation(type: MapAnimationType.smooth, duration: 0.2);

  _initializeLocation() {
    final point = Point(
      latitude: double.parse(lat),
      longitude: double.parse(lng),
    );

    setState(() {

      _userMarker = PlacemarkMapObject(
        mapId: const MapObjectId('user_location_marker'),
        point: point,
        opacity: 1,
        icon:  PlacemarkIcon.single(
          PlacemarkIconStyle(
            image: BitmapDescriptor.fromAssetImage(Assets.images.location.path),
            scale: 2,
          ),
        ),
      );
      _mapController.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: point, zoom: 10),
        ),
        animation:
            const MapAnimation(type: MapAnimationType.smooth, duration: 1),
      );
    });
  }

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
                  _initializeLocation();
                },
                mapObjects: [
                  if (_userMarker != null) _userMarker!,
                ],
              ),
            ),
            Positioned(
              top: 55,
              left: 8,
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            RightActionView(
              zoomInPressed: () async {
                await _mapController.moveCamera(
                  CameraUpdate.zoomIn(),
                  animation: animation,
                );
              },
              zoomOutPressed: () async {
                await _mapController.moveCamera(
                  CameraUpdate.zoomOut(),
                  animation: animation,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
