import 'package:flutter/material.dart';
class NewReleasesWidget extends StatelessWidget {
  const NewReleasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Image.asset("assets/images/movie_img.png"),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset("assets/images/add_background.png").image
            )
          ),
          child: const Icon(Icons.add,color: Colors.white,size: 30,),

        )

      ],
    );
  }
}
