import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/ui/home/widgets/new_release_list.dart';
import 'package:movies_app/ui/home/widgets/recommended_list.dart';

import '../widgets/movie_poster_widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MoviePosterWidget(),
        SizedBox(
          height: 20,
        ),
        NewReleaseList(),
        SizedBox(
          height: 25,
        ),
        RecommendedList()
      ],
    );
  }
}
