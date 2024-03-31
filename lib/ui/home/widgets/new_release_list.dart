import 'package:flutter/cupertino.dart';
import '../../../core/config/app_constants/constants.dart';
import '../../../core/config/styles/app_colors.dart';
import '../../../core/widgets/new_releases_widget.dart';

class NewReleaseList extends StatelessWidget {
  const NewReleaseList({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        flex: 4,
        child:
        Container(
          color: AppColors.onPrimaryColor,
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Releases ",
                style: Constants.theme.textTheme.bodySmall,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const Padding(
                        padding:  EdgeInsets.only(top: 10,right: 8),
                        child:  NewReleasesWidget(image: "assets/images/movie_img.png",));
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ));
  }
}
