import 'dart:convert';

import 'package:movies_app/core/config/app_constants/constants.dart';
import 'package:movies_app/data/models/home_models/popular_movie.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<List<PopularMovie>> getPopularMovies() async {
    List<PopularMovie> popularMoviesList = [];
    Map<String, dynamic> queryParams = {
      "Authorization": Constants.accessToken,
      "accept": "application/json"
    };
    Uri uri = Uri.https(Constants.baseUrl, "/popular", queryParams);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var popularMoviesJson = data["results"];

      for (var element in popularMoviesJson) {
        popularMoviesList.add(PopularMovie.init(element));
      }

      return popularMoviesList;
    } else {
      throw Exception("some thing went wrong");
    }
  }
}
