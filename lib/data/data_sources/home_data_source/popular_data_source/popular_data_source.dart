import 'package:movies_app/data/models/home_models/popular_movie.dart';

abstract class PopularDataSource {
  Future<List<PopularMovie>> getPopularMovies();
}
