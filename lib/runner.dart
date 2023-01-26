import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:newsapp_template/config/dependencies/dependecies.dart';
import 'package:newsapp_template/config/env.dart';
import 'package:newsapp_template/ui/app.dart';

Future<void> run(Env env) async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Flavor a mobile Flutter app as described here -> https://docs.flutter.dev/deployment/flavors
  /// See more in the docs
  await DependencyRegistry.registerDependencies(env);

  runApp(const App());
}
