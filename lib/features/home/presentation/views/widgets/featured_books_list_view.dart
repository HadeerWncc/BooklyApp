import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_book_img_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * .25;
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: height,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.featuredbooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: CustomBookImage(
                    bookModel: state.featuredbooks[index],
                    borderRadius: BorderRadius.circular(16),
                    imageUrl: state.featuredbooks[index].volumeInfo.imageLinks
                                ?.thumbnail ==
                            null
                        ? ''
                        : state.featuredbooks[index].volumeInfo.imageLinks!
                            .thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return CustomBookImgLoadingIndecator(
            height: height,
            itemCount: 3,
          );
        }
      },
    );
  }
}
