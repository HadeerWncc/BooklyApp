import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/semilar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
               const CustomBookDetailsappBar(),
               const SizedBox(
                  height: 33,
                ),
                BooksDetailsSection(bookModel: bookModel,),
               const Expanded(
                  child: SizedBox(
                    height: 51,
                  ),
                ),
               const SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
