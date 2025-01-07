import 'dart:io';

import 'package:api/src/api_impl/client/factories.dart';
import 'package:api/src/api_impl/client/services.dart';
import 'package:api/src/converters/default_converter.dart';
import 'package:logging/logging.dart';
import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;

final apiLog = Logger('API');

class ApiClient {
  ApiClient({
    required bool isRelease,
    Iterable<dynamic> interceptors = const [],
  }) {
    const converter = DefaultConverter(factories);

    final ioc = HttpClient();
    ioc.badCertificateCallback = (cert, host, port) => true;
    // if (!isRelease) {
    //   ioc.badCertificateCallback = (cert, host, port) => true;
    // }
    final client = http.IOClient(ioc);

    _chopperClient = ChopperClient(
      client: client,
      baseUrl: Uri.parse(baseUrl),
      converter: converter,
      errorConverter: converter,
      services: services,
      interceptors: [
        ...interceptors,
        HttpLoggingInterceptor(),
      ],
    );
  }

  static const baseUrl = 'https://jsonplaceholder.typicode.com';

  late final ChopperClient _chopperClient;

  T getService<T extends ChopperService>() => _chopperClient.getService<T>();
}
