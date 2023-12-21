import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_views.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kInitialRoute = '/';
  static const kHomeViewRoute = '/homeView';
  static const kBookDetailsViewRoute = '/bookDetailsView';
  static const kSearchViewRoute = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kInitialRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (context, state) =>  BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          
          ),
          child:  BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
