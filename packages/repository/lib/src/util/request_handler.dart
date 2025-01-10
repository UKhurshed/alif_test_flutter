import 'package:chopper/chopper.dart';
import 'package:domain/domain.dart';

typedef Request<T> = Future<Response<T>> Function();

typedef Mapper<S, T> = T Function(S input);

typedef ErrorMapper = Mapper<Object?, DataSourceException>;

Future<T> handleRequest<S, T>(
  Request<S> callback,
  Mapper<S, T> mapper,
) async {
  try {
    final response = await callback();
    if (response.isSuccessful) {
      return mapper(response.body as S);
    }
    throw failureResponse(response);
  } on Exception catch (_) {
    rethrow;
  }
}

DataSourceException failureResponse<T>(Response<T> response) =>
    DataSourceException(
      statusCode: response.statusCode,
      message: response.toString(),
    );

UnsuccessfulResponseException unsuccessfulResponse<T>(Response<T> response) =>
    UnsuccessfulResponseException(
      statusCode: response.statusCode,
      message: response.toString(),
    );

class UnsuccessfulResponseException implements Exception {
  UnsuccessfulResponseException({
    required this.statusCode,
    required this.message,
  });

  final int statusCode;
  final String message;

  @override
  String toString() => 'API error. Status: $statusCode\n$message';
}
