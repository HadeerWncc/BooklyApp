import 'package:bookly_app/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/semilar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
                CustomBookDetailsappBar(),
                SizedBox(
                  height: 33,
                ),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 51,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
