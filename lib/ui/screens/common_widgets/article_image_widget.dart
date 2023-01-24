import 'package:flutter/material.dart';

class ArticleImage extends StatelessWidget {
  final String? imageUrl;

  const ArticleImage({required this.imageUrl, Key? key}) : super(key: key);

  final String placeholderPath = './assets/images/thumbnail_placeholder.png';

  @override
  Widget build(BuildContext context) {
    return imageUrl != null
        ? FadeInImage(
            fadeInDuration: const Duration(milliseconds: 100),
            fit: BoxFit.fill,
            placeholder: AssetImage(placeholderPath),
            image: NetworkImage(
              imageUrl!,
            ),
            imageErrorBuilder: (ctx, im, stack) => Image.asset(placeholderPath),
          )
        : Image.asset(placeholderPath);
  }
}
