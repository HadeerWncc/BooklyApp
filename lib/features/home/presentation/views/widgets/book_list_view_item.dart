import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_content_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_image_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
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
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            BestSellerImageItem(
              bookModel: bookModel,
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail == null
                  ? ''
                  : bookModel.volumeInfo.imageLinks!.thumbnail,
            ),
            const SizedBox(
              width: 30,
            ),
            BestSellerContentItem(
              title: bookModel.volumeInfo.title,
              subtitle: bookModel.volumeInfo.authors![0],
              rating: 4.8,
              views: 3542,
            ),
          ],
        ),
      ),
    );
  }
}
