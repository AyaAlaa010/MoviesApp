import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/new_releases_widget.dart';
import '../../../core/config/app_constants/constants.dart';
import '../../../core/widgets/poster_widget.dart';

class MoviePosterWidget extends StatelessWidget {
  const MoviePosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          const PosterWidget(),
          Positioned(
            bottom: -35,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              const SizedBox(
                width: 5,
              ),
              const NewReleasesWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Dora and the lost city of gold",
                    style: Constants.theme.textTheme.labelMedium,
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
      ),
    );
  }
}
