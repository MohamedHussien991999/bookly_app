import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearchTextField(),
        SizedBox(
          height: 16,
        ),
        Text(
          'Search Results',
          style: Styles.textStyle18,
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
