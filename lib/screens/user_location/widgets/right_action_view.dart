import 'package:alif_test/screens/user_location/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/gen/assets.gen.dart';

class RightActionView extends StatelessWidget {
  const RightActionView({
    super.key,
    required this.zoomInPressed,
    required this.zoomOutPressed,
  });

  final VoidCallback zoomInPressed;
  final VoidCallback zoomOutPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleDecoratedBox(
              backgroundColor: Colors.white.withOpacity(0.8),
              child: Center(
                child: IconButton(
                  onPressed: zoomInPressed,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 34,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            CircleDecoratedBox(
              backgroundColor: Colors.white.withOpacity(0.8),
              child: IconButton(
                onPressed: zoomOutPressed,
                icon: const Icon(
                  Icons.remove,
                  color: Colors.black,
                  size: 34,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
