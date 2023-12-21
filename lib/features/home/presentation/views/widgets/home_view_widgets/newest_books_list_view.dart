import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/newest_books_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
  });
//85
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: NewestBookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
            childCount: state.books.length,
          ),
        );
      } else if (state is NewestBooksFailure) {
        return SliverFillRemaining(
          child: CustomErrorWidget(errMessage: state.errMessage),
        );
      } else {
        return const SliverFillRemaining(
          child: CustomLoadingIndicator(),
        );
      }
    });
  }
}
