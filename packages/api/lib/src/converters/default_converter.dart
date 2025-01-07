import 'dart:async';

import 'package:api/api.dart';
import 'package:api/src/api_impl/client/api_client.dart';
import 'package:chopper/chopper.dart';

import 'converters.dart';

class DefaultConverter extends JsonSerializableConverter {
  const DefaultConverter(super.factories);

  @override
  FutureOr<Response<ResultType>> convertResponse<ResultType, Item>(
    Response response,
  ) async {
    final jsonRes = await super.convertResponse(response);
    apiLog.info('jsonRes body: ${jsonRes.bodyString}');
    return jsonRes.copyWith<ResultType>(body: decode<Item>(jsonRes.body));
  }

  @override
  FutureOr<Response> convertError<ResultType, Item>(Response response) async {
    final jsonRes = await super.convertError(response);
    apiLog.warning('convertError: ${jsonRes.body}');
    return jsonRes.copyWith(bodyError: jsonRes.body);
  }
}
