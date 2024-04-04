import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../config/styles/app_colors.dart';

class NewReleasesWidget extends StatelessWidget {
  final String image;
  const NewReleasesWidget({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      alignment: Alignment.topLeft,
      children: [
        CachedNetworkImage(
          imageBuilder: (context, imageProvider) {
            return Container(
              height: 180,
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade100,
                  image: DecorationImage(
                      image: imageProvider, fit: BoxFit.cover)),
            );
          },
          imageUrl:  image,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              )),
          errorWidget: (context, url, error) =>
          const Center(child: Icon(Icons.error,color: Colors.red,)),
        )
      ,
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
