import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage(
      {super.key, required this.imageUrl, required this.borderRadius, required this.bookModel});
  final String imageUrl;
  final BorderRadiusGeometry borderRadius;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: ClipRRect(
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
      ),
    );
  }
}
