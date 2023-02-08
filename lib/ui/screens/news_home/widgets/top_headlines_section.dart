import 'package:carousel_slider/carousel_slider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:newsapp/ui/screens/common_widgets/error_widgets/generic_error.dart';
import 'package:newsapp/ui/screens/common_widgets/loading_widget.dart';
import 'package:newsapp/ui/screens/news_home/widgets/headline_item.dart';
import 'package:newsapp/ui/screens/saved_shared/empty_section_widget.dart';
import 'package:newsapp/utils/remove_splash_screen.dart';

class TopHeadlinesSection extends StatefulWidget {
  final void Function() refreshNews;

  const TopHeadlinesSection({Key? key, required this.refreshNews}) : super(key: key);

  @override
  State<TopHeadlinesSection> createState() => _TopHeadlinesSectionState();
}

class _TopHeadlinesSectionState extends State<TopHeadlinesSection> {
  int _carouselIndex = 0;
  final CarouselController _carouselController = CarouselController();

  Future<bool> _checkConnectivity() => Connectivity().checkConnectivity().then((connectivityResult) =>
      connectivityResult == ConnectivityResult.wifi || connectivityResult == ConnectivityResult.mobile);

  void _showSnackBar(bool validity, bool freshness) => _checkConnectivity().then((connected) {
        String message = '';
        if (!validity) {
          message = connected ? AppLocalizations.of(context)!.fail : AppLocalizations.of(context)!.connect;
        } else if (!freshness) {
          message = connected ? 'Swipe down to refresh' : '';
        }

        if (message != '') ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
      });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocConsumer<TopNewsCubit, NewsFetchState>(
        listener: (ctx, state) => state.whenOrNull(
          hasData: (_, validity, freshness) {
            if ((!validity || !freshness) && ModalRoute.of(context)!.isCurrent) {
              _showSnackBar(validity, freshness);
            }
            checkToRemoveSplashScreen(context.read<EveryThingNewsCubit>().state);
            return;
          },
        ),
        builder: (ctx, state) {
          return state.maybeWhen(
              hasData: (articles, _, __) {
                return articles.isEmpty
                    ? const EmptySectionWidget()
                    : Column(
                        children: [
                          CarouselSlider.builder(
                            carouselController: _carouselController,
                            options: CarouselOptions(
                              height: 400,
                              initialPage: _carouselIndex,
                              pageSnapping: true,
                              viewportFraction: 1,
                              onPageChanged: (index, _) => setState(() => _carouselIndex = index),
                            ),
                            itemCount: articles.length,
                            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => HeadlineItem(
                              article: articles[itemIndex],
                              refreshNews: widget.refreshNews,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: articles.asMap().entries.map((entry) {
                              return Container(
                                width: 12.0,
                                height: 12.0,
                                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black)
                                            .withOpacity(_carouselIndex == entry.key ? 0.9 : 0.4)),
                              );
                            }).toList(),
                          ),
                        ],
                      );
              },
              loading: () => const LoadingWidget(),
              orElse: () => const GenericErrorWidget());
        },
      ),
    );
  }
}
