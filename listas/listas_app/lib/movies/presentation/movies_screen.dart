import 'package:flutter/material.dart';
import 'package:listas_app/movies/data/movies_repository.dart';
import 'package:listas_app/movies/domain/movie.dart';

class MoviesScreen extends StatelessWidget {
  MoviesScreen({super.key});

  final movieRepository = MoviesRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies List')),
      body: _ListItem(movies: movieRepository.getMovies()),
    );
  }
}

class _ListItem extends StatelessWidget {
  final List<Movie> movies;

  const _ListItem({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return ListTile(
          leading: Image.network(
            movie.posterUrl,
            width: 50,
            height: 75,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.broken_image);
            },
          ),
          title: Text(movie.title),
          subtitle: Text('${movie.director} - ${movie.year}'),
        );
      },
    );
  }
}