import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapp/config/dependencies/dependecies.dart';
import 'package:newsapp/config/env.dart';
import 'package:newsapp/ui/app.dart';
import 'package:redux/redux.dart';

Future<void> run(Env env) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await DependencyRegistry.registerDependencies(env);

  final middlewares = createMiddlewares(readDR(), readDR());
  final store =
  Store<AppState>(appReducer, initialState: AppState.initialState(), middleware: middlewares);

  runApp(App(
    store: store,
  ));
}
