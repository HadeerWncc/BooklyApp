import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BestSellerImageItem extends StatelessWidget {
  const BestSellerImageItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CustomBookImage(
      borderRadius: BorderRadius.circular(6),
      imageUrl: imageUrl,
    );
  }
}
