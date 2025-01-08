import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class DefaultShimmer extends StatelessWidget {
  const DefaultShimmer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade200,
      child: child,
    );
  }
}

class DefaultTextShimmer extends StatelessWidget {
  const DefaultTextShimmer({
    super.key,
    this.height = 20,
    this.width = 60,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return DefaultShimmer(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey,
        ),
        child: SizedBox(
          height: height,
          width: width,
        ),
      ),
    );
  }
}
