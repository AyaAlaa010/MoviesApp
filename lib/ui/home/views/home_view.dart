import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/config/app_constants/constants.dart';
import '../../../core/config/styles/app_colors.dart';
import '../widgets/new_releases_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        const Expanded(
          flex: 5,
          child: Stack(
            children: [],
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: AppColors.onPrimaryColor,
              padding:const  EdgeInsets.only(top: 15,bottom: 15,left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text("New Releases ",style: Constants.theme.textTheme.bodySmall,),

                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return  const NewReleasesWidget();
                      },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            )),
      const   SizedBox(height: 30,),
        Expanded(
            flex: 3,
            child: Container(
              padding:const  EdgeInsets.only(top: 15,bottom: 15,left: 15),

              color: AppColors.onPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recommended",style: Constants.theme.textTheme.bodySmall,),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return  const NewReleasesWidget();
                      },
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
