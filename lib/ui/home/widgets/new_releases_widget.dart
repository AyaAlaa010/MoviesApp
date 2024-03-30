import 'package:flutter/material.dart';
class NewReleasesWidget extends StatelessWidget {
  const NewReleasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:const  EdgeInsets.only(top: 10,right: 8),
      child:
      Stack(
        alignment: Alignment.topLeft,
        children: [
          Image.asset("assets/images/movie_img.png",fit: BoxFit.cover,),
          Container(
            height: 33,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset("assets/images/add_background.png",fit: BoxFit.cover).image
              )
            ),
            child: const Icon(Icons.add,color: Colors.white,),

          )

        ],
      ),
    );
  }
}
