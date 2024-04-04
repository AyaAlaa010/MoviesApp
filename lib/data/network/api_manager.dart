import 'dart:convert';

import 'package:movies_app/core/config/app_constants/constants.dart';
import 'package:movies_app/data/models/home_models/popular_movie.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<List<PopularMovie>> getPopularMovies() async {
    List<PopularMovie> popularMoviesList = [];
    Map<String, String> ? queryParams = {
      "Authorization": Constants.accessToken
    };
    Uri uri = Uri.https(Constants.baseUrl, "/3/movie/popular" );
    var response = await http.get(uri,headers: queryParams);
    if (response.statusCode == 200) {

      var data = jsonDecode(response.body);
      var popularMoviesJson = data["results"];
      print(popularMoviesJson);

      for (var element in popularMoviesJson) {
        popularMoviesList.add(PopularMovie.init(element));
      }
      return popularMoviesList;
    } else {
      var data = jsonDecode(response.body);
      var error = data["status_message"];
      throw Exception(error);
    }
  }
}
