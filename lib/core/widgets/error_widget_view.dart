import 'package:alif_test/core/utils/utils.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class ErrorBuilderView extends StatelessWidget {
  const ErrorBuilderView({
    super.key,
    required this.exception,
    required this.onPressed,
  });

  final Exception exception;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    String message = s.errorOccurred;
    if (exception is DataSourceException) {
      message = (exception as DataSourceException).message;
    }
    return SliverToBoxAdapter(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: onPressed,
              child: const Text('Retry again'),
            )
          ],
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, Exception? exception) {
  final s = S.of(context);
  String message = s.errorOccurred;
  if (exception is DataSourceException) {
    message = exception.message;
  }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: Theme.of(context).colorScheme.error,
    ),
  );
}
