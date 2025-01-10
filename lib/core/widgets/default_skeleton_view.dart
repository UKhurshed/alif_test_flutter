

import 'package:alif_test/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DefaultSkeletonView extends StatelessWidget {
  const DefaultSkeletonView({
    super.key,
    this.childCount = 5,
    this.itemHeight = 120,
  });

  final int childCount;
  final double itemHeight;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List.generate(
          childCount,
              (value) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: DefaultShimmer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SizedBox(
                  height: itemHeight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}