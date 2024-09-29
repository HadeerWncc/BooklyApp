import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl, required this.borderRadius});
  final String imageUrl;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: AspectRatio(
          aspectRatio: 2 / 3,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
          )),
    );
  }
}
