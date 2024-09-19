import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerContentItem extends StatelessWidget {
  const BestSellerContentItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: const Text(
            'Harry Potter and the Goblet of Fire',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20,
          ),
        ),
      ],
    );
  }
}