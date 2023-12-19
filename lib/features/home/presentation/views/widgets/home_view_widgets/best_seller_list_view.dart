import 'package:bookly_app/core/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: BookListViewItem(),
          );
        },
        childCount: 10,
      ),
    );
  }
}
