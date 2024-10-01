import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BestSellerImageItem extends StatelessWidget {
  const BestSellerImageItem({
    super.key,
    required this.imageUrl, required this.bookModel,
  });
  final String imageUrl;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomBookImage(
      bookModel: bookModel,
      borderRadius: BorderRadius.circular(6),
      imageUrl: imageUrl,
    );
  }
}
