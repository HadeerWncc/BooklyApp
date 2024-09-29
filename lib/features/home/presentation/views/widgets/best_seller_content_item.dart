import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/booking_rate.dart';
import 'package:flutter/material.dart';

class BestSellerContentItem extends StatelessWidget {
  const BestSellerContentItem({
    super.key, required this.title, required this.subtitle, required this.rating, required this.views,
  });
  final String title;
  final String subtitle;
  final double rating;
  final int views;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              subtitle,
              style: Styles.textStyle14,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Free',
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: BookRating(rating: rating,views: views,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
