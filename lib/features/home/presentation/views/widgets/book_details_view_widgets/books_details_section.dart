
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/book_rating.dart';
import 'package:bookly_app/core/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43.0),
        Text(
          'The 7 Habits of Highly Effective People',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 6.0),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Stephen R. Covey',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37.0),
        const BooksAction(),
      ],
    );
  }
}
