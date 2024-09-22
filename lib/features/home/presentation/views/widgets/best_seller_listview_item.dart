import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_content_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_image_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: const SizedBox(
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
      ),
    );
  }
}
