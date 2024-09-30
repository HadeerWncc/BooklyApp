import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage(
      {super.key, required this.imageUrl, required this.borderRadius});
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
              placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: const Color.fromARGB(255, 219, 216, 216),
                    highlightColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: borderRadius,
                      child: Container(
                        width: double.infinity,
                        color: const Color.fromARGB(255, 214, 212, 212),
                      ),
                    ),
                  ))),
    );
  }
}
