import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:news_app/presentation/blocs/news_fetch/news_fetch_state.dart';

void checkToRemoveSplashScreen(NewsFetchState state) =>
    state.maybeMap(hasData: (_) => FlutterNativeSplash.remove(), orElse: () {});
