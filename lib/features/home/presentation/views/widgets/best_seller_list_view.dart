import 'package:bookly_app/core/widgets/custom_best_seller_lodaing_indecator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList.builder(
            itemCount: state.newestbooks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: BookListViewItem(
                  bookModel: state.newestbooks[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(errorMsg: state.errorMsg));
        } else {
          return const CustomBestSellerLoadingIndecator();
        }
      },
    );
  }
}
