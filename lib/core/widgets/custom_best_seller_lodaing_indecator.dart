import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomBestSellerLoadingIndecator extends StatelessWidget {
  const CustomBestSellerLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Shimmer.fromColors(
              baseColor: const Color.fromARGB(255, 209, 206, 206),
              highlightColor: const Color.fromARGB(255, 224, 220, 220),
              child: SizedBox(
                height: 125,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: AspectRatio(
                        aspectRatio: 2 / 3,
                        child: Container(
                          color: const Color.fromARGB(255, 214, 212, 212),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 209, 206, 206),
                            height: 45,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Container(
                            height: 20,
                            color: const Color.fromARGB(255, 209, 206, 206),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 30,
                            color: const Color.fromARGB(255, 209, 206, 206),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
