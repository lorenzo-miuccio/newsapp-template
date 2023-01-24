import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/common_widgets/article_image_widget.dart';

class Thumbnail extends StatelessWidget {
  final String? imageUrl;
  final String imageTag;

  const Thumbnail({required this.imageUrl, required this.imageTag, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Hero(
        tag: imageTag,
        child: ArticleImage(imageUrl: imageUrl),
      ),
    );
  }
}
