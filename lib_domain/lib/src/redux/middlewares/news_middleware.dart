import 'dart:async';

import 'package:domain/src/redux/actions/news_actions.dart';
import 'package:domain/src/redux/app_state.dart';
import 'package:domain/src/redux/util/middleware_mixin.dart';
import 'package:domain/src/repository/news_repository.dart';
import 'package:redux/redux.dart';

class NewsMiddleware with NewsMiddlewareMixin implements MiddlewareClass<AppState> {
  Timer? _timer;
  final NewsRepository _newsRepository;

  NewsMiddleware(this._newsRepository);

  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    if (action is NewsActions) {
      action.whenOrNull(loadNewsAction: (bool top, bool forceRemoteFetch, String? country) {
        store.dispatch(NewsActions.loadingNewsAction(top: top));
        fetchNews(_newsRepository, isTop: top, forceRemoteFetch: forceRemoteFetch, country: country)
            .then((value) => store.dispatch(value));
      });
    }
    next(action);
  }
}
//
// class EverythingNewsMiddleware with NewsMiddlewareMixin implements MiddlewareClass<AppState> {
//   Timer? _timer;
//   final NewsRepository _newsRepository;
//
//   EverythingNewsMiddleware(this._newsRepository);
//
//   @override
//   call(Store<AppState> store, action, NextDispatcher next) {
//     if (action is NewsActions) {
//       action.whenOrNull(loadNewsAction: (bool top, bool forceRemoteFetch, String? country) {
//         store.dispatch(NewsActions.loadingNewsAction(top: top));
//         fetchNews(_newsRepository, isTop: top, forceRemoteFetch: forceRemoteFetch, country: country)
//             .then((value) => store.dispatch(value));
//       });
//     }
//     next(action);
//   }
// }

// void _suggestRefresh() {
//   _timer?.cancel();
//   _timer = Timer.periodic(
//       const Duration(seconds: 30),
//           (timer) => emit(state.maybeMap(
//           hasData: (dataState) => dataState.copyWith(freshness: false), orElse: () => const NewsFetchState.error())));
// }

// class TopNewsCubit extends Cubit<NewsFetchState> with NewsMiddlewareMixin {
//   TopNewsCubit(this._newsRepository) : super(const NewsFetchState.idle());
//
//   Future<void> getTopNews(String country, {bool forceRemoteFetch = false}) async {
//     emit(const NewsFetchState.loading());
//
//     return fetchNews(_newsRepository,
//             isTop: true, forceRemoteFetch: forceRemoteFetch, suggestRefresh: _suggestRefresh, country: country)
//         .then((value) => emit(value));
//   }
//
//   @override
//   Future<void> close() {
//     _timer?.cancel();
//     return super.close();
//   }
// }
