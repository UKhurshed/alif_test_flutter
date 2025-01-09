class DataSourceException implements Exception {
  const DataSourceException({
    required this.message,
    required this.statusCode,
  });

  final String message;
  final int statusCode;

  @override
  String toString() {
    return 'DataSourceException(message: $message, statusCode: $statusCode)';
  }
}