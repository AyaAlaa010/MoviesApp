import 'package:flutter/material.dart';
import 'package:movies_app/main.dart';

class Constants{

 static var theme =Theme.of(navigatorKey.currentState!.context);
 static var mediaQuery =MediaQuery.of(navigatorKey.currentState!.context).size;
 static const apiKey ="f6c8e791c6ade9fa52998a6f93e2fd76";
 static const accessToken ="Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmNmM4ZTc5MWM2YWRlOWZhNTI5OThhNmY5M2UyZmQ3NiIsInN1YiI6IjY2MGFmODQ0MGI1ZmQ2MDE2MjM2Mzk4NCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.CT-vTFKX2ZQy0ITmvlayZkn8dQTeiooTo47IgxvQRXI";
 static const baseUrl ="api.themoviedb.org/3/movie";

}