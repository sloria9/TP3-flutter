import 'package:listas_app/movies/domain/movie.dart';

class MoviesRepository {
  List<Movie> getMovies() {
    return [
      Movie(
        id: '1',
        title: 'The Shawshank Redemption',
        description: 'blabla',
        director: 'Frank Darabont',
        year: 1994,
        posterUrl:
            'https://image.tmdb.org/t/p/w500/uRRTV7p6l2ivtODWJVVAMRrwTn2.jpg',
      ),
      Movie(
        id: '2',
        title: 'The Godfather',
        description: 'blabla',
        director: 'Francis Ford Coppola',
        year: 1972,
        posterUrl:
            'https://image.tmdb.org/t/p/w500/5HlLUsmsv60cZVTzVns9ICZD6zU.jpg',
      ),
      Movie(
        id: '3',
        title: 'The Dark Knight',
        description: 'blabla',
        director: 'Christopher Nolan',
        year: 2008,
        posterUrl:
            'https://image.tmdb.org/t/p/w500/8QDQExnfNFOtabLDKqfDQuHDsIg.jpg',
      ),
    ];
  }
}