import 'package:domain/domain.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void checkToRemoveSplashScreen(NewsFetchState state) =>
    state.mapOrNull(hasData: (_) => FlutterNativeSplash.remove());
