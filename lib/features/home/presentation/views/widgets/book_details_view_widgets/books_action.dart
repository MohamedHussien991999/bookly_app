import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                
              },
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: CustomButton(
              fontSize: 16,
              text: getText(bookModel),
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              onPressed: () {
                launchCustomUr(context, bookModel.volumeInfo.previewLink);
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available !';
    } else {
      return 'Preview';
    }
  }
}
