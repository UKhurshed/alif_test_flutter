import 'dart:developer';
import 'package:alif_test/core/app_bloc_observer.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initialize() async {
  _initLogging();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
}

void _initLogging() {
  // ChuckerFlutter.isDebugMode = !kReleaseMode;

  Bloc.observer = AppBlocObserver();

  Logger.root
    ..level = kReleaseMode ? Level.OFF : Level.ALL
    ..onRecord.listen((rec) {
      log(
        rec.message,
        time: rec.time,
        sequenceNumber: rec.sequenceNumber,
        level: rec.level.value,
        name: rec.loggerName,
        zone: rec.zone,
        error: rec.error,
        stackTrace: rec.stackTrace,
      );
    });
}
