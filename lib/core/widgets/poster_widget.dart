import 'package:flutter/material.dart';

import '../config/app_constants/constants.dart';


class PosterWidget extends StatelessWidget {
  const PosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.mediaQuery.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/images/poster.png",fit: BoxFit.cover,).image
          )

      ),

      child: const Icon(Icons.play_circle_rounded,color: Colors.white,size: 60,),

    );
  }
}
