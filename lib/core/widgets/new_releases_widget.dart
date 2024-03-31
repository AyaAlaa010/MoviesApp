import 'package:flutter/material.dart';
class NewReleasesWidget extends StatelessWidget {
  final String image;
  const NewReleasesWidget({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      alignment: Alignment.topLeft,
      children: [
        Image.asset(image,fit: BoxFit.cover,),
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
    );
  }
}
