import 'package:flutter/material.dart';
import 'package:movies_app/data/models/home_models/movie_model.dart';
import '../config/app_constants/constants.dart';
import '../config/styles/app_colors.dart';
import 'new_releases_widget.dart';

class RecommendedItemWidget extends StatelessWidget {
  //MovieModel model
  const RecommendedItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: AppColors.itemBackground,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // const Expanded(
        //     flex: 8,
        //     child:
            // NewReleasesWidget(
            //   image: "assets/images/movie_img.png",
            // )),//todo remove comments
        Expanded(
          flex: 2,
          child: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/images/star_icon.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "7.7",
                style: Constants.theme.textTheme.displayLarge,
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Deadpool 2",
                  style: Constants.theme.textTheme.displayLarge,
                ))),
        Expanded(
            flex: 1,
            child: Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 3),
                child: Text(
                  "2018 R 1h:5m",
                  style: Constants.theme.textTheme.displayMedium,
                )))
      ]),
    );
  }
}
