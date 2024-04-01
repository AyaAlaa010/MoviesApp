import 'package:movies_app/data/data_sources/home_data_source/popular_data_source/popular_data_source.dart';
import 'package:movies_app/data/models/home_models/popular_movie.dart';
import 'package:movies_app/repositories/popular_repository.dart';

class PopularRepositoryImp extends PopularRepository {
  final PopularDataSource popularDataSource;
  PopularRepositoryImp(this.popularDataSource);

  @override
  Future<List<PopularMovie>> getPopularMovies() async {
    return await popularDataSource.getPopularMovies();
  }
}
