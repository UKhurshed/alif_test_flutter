import 'dart:developer';
import 'package:alif_test/core/app_bloc_observer.dart';
import 'package:bloc/bloc.dart';
// import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';


Future<void> initialize() async {
  _initLogging();
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
