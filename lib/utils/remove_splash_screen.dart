import 'package:domain/domain.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void checkToRemoveSplashScreen(NewsFetchState state) =>
    state.maybeMap(hasData: (_) => FlutterNativeSplash.remove(), orElse: () {});
