import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../config/styles/app_colors.dart';

class PosterWidget extends StatelessWidget {
  final String image;
  const PosterWidget({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        // width: Constants.mediaQuery.width,
        alignment: Alignment.center,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image:
        //         CachedNetworkImage(
        //           imageBuilder: (context, imageProvider) {
        //             return  Container(
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(16),
        //                   color: Colors.grey.shade100,
        //                   image: DecorationImage(image: imageProvider,fit: BoxFit.cover)
        //               ),
        //             );
        //
        //           },
        //           imageUrl: Constants.imageBaseUrl+image,
        //           fit: BoxFit.cover,
        //           placeholder: (context, url) => const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)),
        //           errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
        //         ),
        //
        //       //Image.asset(Constants.imageBaseUrl+image,fit: BoxFit.cover,).image
        //     )
        //
        // ),

        children: [
          CachedNetworkImage(
            imageBuilder: (context, imageProvider) {
              return Container(
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
                const Center(child: Icon(Icons.error)),
          ),
          const Icon(
            Icons.play_circle_rounded,
            color: Colors.white,
            size: 60,
          ),
        ]);
  }
}
