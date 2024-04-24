import 'package:flutter/material.dart';
import 'package:movies_app/core/config/app_constants/constants.dart';
import 'package:movies_app/core/widgets/cashed_network_image_widget.dart';
import 'package:movies_app/data/models/home_models/movie_model.dart';

class MoviesWidget extends StatefulWidget {
  final MovieModel movieModel;

  const MoviesWidget({Key? key, required this.movieModel}) : super(key: key);

  @override
  State<MoviesWidget> createState() => _MoviesWidgetState();
}

class _MoviesWidgetState extends State<MoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        //color: Colors.transparent,
        height: Constants.mediaQuery.height * .34,
        width: Constants.mediaQuery.width,
        child: Column(
          children: [
            Container(
              height: 190,
              width: Constants.mediaQuery.width,
              child: CashedNetworkImageWidget(
                  image:
                      Constants.imageBaseUrl + widget.movieModel.poster_path),
            ),
            SizedBox(
              height: Constants.mediaQuery.height * .02,
            ),
            Text(
              widget.movieModel.title,
              textAlign: TextAlign.center,
              style: Constants.theme.textTheme.bodyLarge
                  ?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
    //   Expanded(
    //   child: GridView.builder(
    //     padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    //
    //     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
    //
    //       crossAxisCount: 2,
    //       mainAxisSpacing:20,
    //       crossAxisSpacing: 20,
    //       childAspectRatio: 3/2,
    //
    //     ),
    //     itemBuilder: (context, index) =>
    //         CashedNetworkImageWidget(
    //         image:Constants.imageBaseUrl+widget.movieModel.poster_path) ,
    //     itemCount:10,
    //   ),
    // );
  }
}
