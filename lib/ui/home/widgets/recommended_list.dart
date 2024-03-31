import 'package:flutter/cupertino.dart';
import '../../../core/config/app_constants/constants.dart';
import '../../../core/config/styles/app_colors.dart';
import '../../../core/widgets/recommended_item.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return         Expanded(
        flex: 5,
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
          color: AppColors.onPrimaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recommended",
                style: Constants.theme.textTheme.bodySmall,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const RecommendedItemWidget();
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ))
    ;
  }
}
