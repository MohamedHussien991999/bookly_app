import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/newest_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_widgets/featured_box_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomAppBar(),
                ),
             FeaturedBoxListView(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Text(
                    'Newest Books',
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          NewestBooksListView(),
        ],
      ),
    );
  }
}
