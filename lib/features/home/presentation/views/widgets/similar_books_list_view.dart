import 'package:bookly_app/core/widgets/custom_book_img_loading_indecator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * .15;
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: height,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.similarBooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomBookImage(
                    bookModel: state.similarBooks[index],
                    imageUrl: state.similarBooks[index].volumeInfo.imageLinks
                            ?.thumbnail ??
                        '',
                    borderRadius: BorderRadius.circular(16),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return CustomBookImgLoadingIndecator(height: height,itemCount: 4,);
        }
      },
    );
  }
}
