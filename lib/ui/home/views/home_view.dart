import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/ui/home/widgets/new_release_list.dart';
import 'package:movies_app/ui/home/widgets/recommended_list.dart';
import '../widgets/movie_poster_widgets.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
      Expanded(
      flex: 7,
       child : FlutterCarousel.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          const MoviePosterWidget(),
          options: CarouselOptions(
              aspectRatio: 18 / 14,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              controller: CarouselController(),
              pageSnapping: true,
              scrollDirection: Axis.horizontal,
              pauseAutoPlayOnTouch: true,
              pauseAutoPlayOnManualNavigate: true,
              pauseAutoPlayInFiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              disableCenter: false,
              showIndicator: false,
              //slideIndicator: const CircularSlideIndicator(currentIndicatorColor: Colors.black)
          ),

        ))
        ,
        const SizedBox(
          height: 20,
        ),
        const NewReleaseList(),
        const SizedBox(
          height: 25,
        ),
        const  RecommendedList()
      ],
    );
  }
}
