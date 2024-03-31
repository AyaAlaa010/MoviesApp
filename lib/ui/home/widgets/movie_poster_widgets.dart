import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/new_releases_widget.dart';
import '../../../core/config/app_constants/constants.dart';
import '../../../core/widgets/poster_widget.dart';

class MoviePosterWidget extends StatelessWidget {
  const MoviePosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        alignment: Alignment.bottomLeft,
        children: [
          const PosterWidget(),
          Positioned(
            bottom: -25,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const SizedBox(
                width: 8,
              ),
              const NewReleasesWidget(image: "assets/images/dora.png",),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Dora and the lost city of gold",
                    style: Constants.theme.textTheme.labelSmall!.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "2019  PG-13  2h 7m",
                    style: Constants.theme.textTheme.displayLarge,
                  ),
                ],
              )
            ]),
          ),
        ],
      )
    ;
  }
}
