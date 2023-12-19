import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50.0)),
                SimilarBooksSection(),
                SizedBox(height: 40.0),
              ],
            ),
          ),
        )
      ],
    );
  }
}
