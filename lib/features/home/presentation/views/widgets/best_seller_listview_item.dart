import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_content_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_image_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 125,
      child: Row(
        children: [
          BestSellerImageItem(),
          SizedBox(
            width: 30,
          ),
          BestSellerContentItem(),
        ],
      ),
    );
  }
}
