import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerImageItem extends StatelessWidget {
  const BestSellerImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
