import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBookImgLoadingIndecator extends StatelessWidget {
  const CustomBookImgLoadingIndecator({super.key, required this.height, required this.itemCount});
  final double height;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 209, 206, 206),
        highlightColor: const Color.fromARGB(255, 224, 220, 220),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 14),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 2 / 3,
                  child: Container(
                    color: const Color.fromARGB(255, 214, 212, 212),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
