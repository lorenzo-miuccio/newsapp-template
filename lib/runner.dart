import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:newsapp/config/dependencies/dependecies.dart';
import 'package:newsapp/config/env.dart';
import 'package:newsapp/ui/app.dart';

Future<void> run(Env env) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await DependencyRegistry.registerDependencies(env);
  runApp(const App());
}