import '../../../data/models/home_models/popular_movie.dart';

sealed class PopularStates {}

class LoadingPopularStates extends PopularStates {}

class SuccessPopularStates extends PopularStates {
  final List<PopularMovie> popularList;
  SuccessPopularStates(this.popularList);
}

class ErrorPopularStates extends PopularStates {
  final String message;
  ErrorPopularStates(this.message);
}
