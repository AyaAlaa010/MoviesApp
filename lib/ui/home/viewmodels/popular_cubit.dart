import 'package:movies_app/data/data_sources/home_data_source/popular_data_source/popular_data_source_imp.dart';
import 'package:movies_app/data/models/home_models/popular_movie.dart';
import 'package:movies_app/data/repositories_imp/popular_repository_imp.dart';
import 'package:movies_app/ui/home/viewmodels/popular_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/data_sources/home_data_source/popular_data_source/popular_data_source.dart';
import '../../../data/network/api_manager.dart';
import '../../../repositories/popular_repository.dart';

class PopularCubit extends Cubit<PopularStates> {
  late PopularRepository popularRepository;
  late PopularDataSource popularDataSource;
  late ApiManager apiManager;

  PopularCubit() : super(LoadingPopularStates());

  getPopularMovies() async {
    apiManager = ApiManager();
    popularDataSource = PopularDataSourceImp(apiManager: apiManager);
    popularRepository = PopularRepositoryImp(popularDataSource);
    emit(LoadingPopularStates());
    try {
      List<PopularMovie> popularList = await popularRepository.getPopularMovies();
      emit(SuccessPopularStates(popularList));
    } catch (message) {
      emit(ErrorPopularStates(message.toString()));
    }
  }
}
