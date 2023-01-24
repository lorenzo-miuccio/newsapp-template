import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:news_app/config/dependencies/dependecies.dart';
import 'package:news_app/config/env.dart';
import 'package:news_app/ui/app.dart';


void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await DependencyRegistry.registerDependencies(Env.dev());
  runApp(const App());
}

