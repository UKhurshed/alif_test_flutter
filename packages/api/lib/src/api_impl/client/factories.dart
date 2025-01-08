import 'package:api/api.dart';
import 'package:api/src/api_impl/models/users_factories.dart';

const Map<Type, JsonFactory> factories = {
  ...commonFactories,
  ...usersFactories,
};
