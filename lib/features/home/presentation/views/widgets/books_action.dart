import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/models/book_model/pdf.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    // Pdf pdf = bookModel.accessInfo!.pdf!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            onPressed: () async {
              if (bookModel.accessInfo!.pdf!.isAvailable == true) {
                await launchCustomUrl(
                    context, bookModel.accessInfo!.webReaderLink!);
              }
            },
            text: 'FREE',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          )),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                if (bookModel.volumeInfo.previewLink != null) {
                  await launchCustomUrl(
                      context, bookModel.volumeInfo.previewLink!);
                }
              },
              fontSize: 16,
              text: getText(bookModel),
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avilable';
  } else {
    return 'Preview';
  }
}
