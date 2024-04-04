import 'dart:convert';

import 'package:movies_app/core/config/app_constants/constants.dart';
import 'package:movies_app/data/models/home_models/movie_model.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<List<MovieModel>> getPopularMovies() async {
    List<MovieModel> popularMoviesList = [];
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
        popularMoviesList.add(MovieModel.init(element));
      }
      return popularMoviesList;
    } else {
      var data = jsonDecode(response.body);
      var error = data["status_message"];
      throw Exception(error);
    }
  }

  Future<List<MovieModel>> getNewRelease() async {
    List<MovieModel> newReleaseList = [];
    Map<String, String> ? queryParams = {
      "Authorization": Constants.accessToken
    };
    Uri uri = Uri.https(Constants.baseUrl, "/3/movie/upcoming" );
    var response = await http.get(uri,headers: queryParams);
    if (response.statusCode == 200) {

      var data = jsonDecode(response.body);
      var newReleaseJson = data["results"];

      for (var element in newReleaseJson) {
        newReleaseList.add(MovieModel.init(element));
      }
      return newReleaseList;
    } else {
      var data = jsonDecode(response.body);
      var error = data["status_message"];
      throw Exception(error);
    }
  }

}
