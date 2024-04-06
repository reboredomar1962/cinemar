import 'package:cinema_app/domain/entities/movie.dart';
import 'package:cinema_app/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != "")
          ? "https://image.tmdb.org/t/p/w500${moviedb.backdropPath}"
          : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQls6WsMC9YJ07avjRUAX8knRkfLonz4MCmLoP5W2QYHw&s",
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != "")
          ? "https://image.tmdb.org/t/p/w500${moviedb.posterPath}"
          : "no-poster",
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);
}
