
import 'package:flutter/material.dart';

class CustomBookDetailsappBar extends StatelessWidget {
  const CustomBookDetailsappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          iconSize: 25,
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        IconButton(
          iconSize: 25,
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
