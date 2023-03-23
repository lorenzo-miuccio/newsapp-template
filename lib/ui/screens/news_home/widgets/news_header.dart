import 'package:flutter/material.dart';

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
    return SliverAppBar(
      key: ValueKey(title),
      pinned: true,
      leadingWidth: 5,
      leading: null,
      centerTitle: false,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
