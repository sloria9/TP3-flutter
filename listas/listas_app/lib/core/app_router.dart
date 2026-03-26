import 'package:go_router/go_router.dart';
import 'package:listas_app/movies/presentation/movie_detail.dart';
import 'package:listas_app/movies/presentation/movies_screen.dart';

final appRouter = GoRouter (
  initialLocation: '/movies',
  routes: [
  GoRoute(path: '/movies', builder: (context, state) => MoviesScreen()),
  GoRoute(path: '/movie_detail', builder: (context, state) => const MoviesDetail())
]);