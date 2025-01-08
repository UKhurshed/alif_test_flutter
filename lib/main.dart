import 'package:alif_test/configuration.dart';
import 'package:alif_test/screens/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const App());
}
