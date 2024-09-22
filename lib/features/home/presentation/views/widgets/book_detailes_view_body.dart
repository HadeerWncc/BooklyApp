import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var windowSize = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Column(
        children: [
          const CustomBookDetailsappBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: windowSize * .17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
