import 'package:alif_test/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> showDeleteDialog(
    BuildContext context,
    VoidCallback actionPressed,
    String content,
    ) async {
  await showDialog(
    context: context,
    builder: (dialogCtx) {
      final s = S.of(context);
      return AlertDialog(
        title: Text(s.delete),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              dialogCtx.pop();
            },
            child: Text(s.back),
          ),
          TextButton(
            onPressed: () {
              actionPressed();
              dialogCtx.pop();
            },
            child: Text(s.delete),
          ),
        ],
      );
    },
  );
}