import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:movies_app/core/widgets/cashed_network_image_widget.dart';
import '../config/styles/app_colors.dart';

class PosterWidget extends StatelessWidget {
  final String image;
  const PosterWidget({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        // width: Constants.mediaQuery.width,
        alignment: Alignment.center,
        children: [
          CashedNetworkImageWidget(image: image),
          const Icon(
            Icons.play_circle_rounded,
            color: Colors.white,
            size: 60,
          ),
        ]);
  }
}
