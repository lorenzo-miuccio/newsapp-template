import 'package:flutter/material.dart';
import 'package:newsapp/utils/check_device_dimension.dart';

class _CustomSliverHeader extends SliverPersistentHeaderDelegate {
  final String title;

  const _CustomSliverHeader(this.title) : super();

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 15),
      height: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        /*boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 0.0,
            offset: const Offset(0, 1.0), // shadow direction: bottom right
          )
        ],*/
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  @override
  double get maxExtent => 55;

  @override
  double get minExtent => 55;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}

class NewsHeaderWidget extends StatelessWidget {
  final String title;

  const NewsHeaderWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return isSmallDevice(width)
        ? SliverAppBar(
            key: ValueKey(title),
            pinned: true,
            leadingWidth: 5,
            leading: const SizedBox(),
            centerTitle: false,
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const Divider(
                thickness: 1.5,
                indent: 10,
                endIndent: 10,
                height: 0,
              )
            ],
          );
  }
}
