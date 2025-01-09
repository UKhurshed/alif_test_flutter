import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CircleDecoratedBox extends StatelessWidget {
  const CircleDecoratedBox({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.onTap,
  });

  final Widget child;
  final Color backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap == null
          ? null
          : () {
              HapticFeedback.selectionClick();
              onTap!();
            },
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: SizedBox(
          height: 55,
          width: 55,
          child: child,
        ),
      ),
    );
  }
}
