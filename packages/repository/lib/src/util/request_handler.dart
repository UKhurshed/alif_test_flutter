import 'dart:convert';

import 'package:api/api.dart';
import 'package:chopper/chopper.dart';
import 'package:domain/domain.dart';

typedef Request<T> = Future<Response<T>> Function();

typedef Mapper<S, T> = T Function(S input);

typedef ErrorMapper = Mapper<Object?, DataSourceException>;

// final class RequestHandler {
//   const RequestHandler._();
//
//   static DataSourceException _defaultErrorMapper(Object? input) {
//     Map<String, dynamic> errorMap = {};
//     try {
//       final commonErrorResponse = input is CommonErrorResponse;
//       if (commonErrorResponse) {
//         final errorMessageResponse = input.detail.errorMessageResponse;
//         errorMap = {
//           "error_message": {
//             "en": errorMessageResponse.en,
//             "ru": errorMessageResponse.ru,
//             "tj": errorMessageResponse.tj,
//           }
//         };
//         final encode = jsonEncode(errorMap);
//         return DataSourceException(message: encode);
//       } else {
//         final String value = (input as Map<String, dynamic>)['error_message'];
//         errorMap = {"error_message": value};
//         apiLog.info('errorMap: $errorMap & type: ${errorMap.runtimeType}');
//         final errorMapEncode = jsonEncode(errorMap);
//         apiLog.info('errorMapEncode: $errorMapEncode');
//         return DataSourceException(message: errorMapEncode);
//       }
//     } catch (e) {
//       errorMap = {
//         "error_message": {
//           "en": "An error has occurred",
//           "ru": "Произошла ошибка",
//           "tj": "Хато рӯй дод",
//         }
//       };
//
//       final encode = jsonEncode(errorMap);
//
//       return DataSourceException(message: encode);
//     }
//   }
//
//   static ErrorMapper errorMapper = _defaultErrorMapper;
// }

// Future<T> handleRequest<S, T>(
//   Request<S> callback,
//   Mapper<S, T> mapper, {
//   ErrorMapper? errorMapper,
// }) async {
//   final response = await callback();
//   if (response.isSuccessful) {
//     return mapper(response.body as S);
//   }
//
//   apiLog.info('errorMapper: ${errorMapper.toString()}');
//   final effectiveErrorMapper = errorMapper ?? RequestHandler.errorMapper;
//   apiLog.info('effectiveErrorMapper: ${effectiveErrorMapper(response.error)}');
//   throw effectiveErrorMapper(response.error);
// }

Future<T> handleRequest<S, T>(
    Request<S> callback,
    Mapper<S, T> mapper,
    ) async {
  try {
    final response = await callback();
    if (response.isSuccessful) {
      return mapper(response.body as S);
    }
    throw unsuccessfulResponse(response);
  } on Exception catch (_) {
    rethrow;
  }
}


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