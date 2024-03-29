import 'package:flutter/material.dart';
import 'package:movies_app/core/config/routes/pages_route_name.dart';
import 'package:movies_app/ui/home/views/home_view.dart';
import 'package:movies_app/ui/splash/views/splash_views.dart';

class Routes {
  static Route<dynamic> onGeneratedRouteSettings(RouteSettings settings) {

    switch (settings.name) {
      case PagesRouteName.splash:
        return MaterialPageRoute(
            builder: (context) => const SplashView(), settings: settings);
      case PagesRouteName.homeView:
        return MaterialPageRoute(
            builder: (context) => const HomeView(), settings: settings);

      default:
        return MaterialPageRoute(builder: (context) => const HomeView());
    }
  }
}
