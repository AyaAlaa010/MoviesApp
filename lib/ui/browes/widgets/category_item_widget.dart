import 'package:flutter/material.dart';

import '../../../core/config/app_constants/constants.dart';
import '../../../data/models/category_model/category_model.dart';

class CategoryItemWidget extends StatelessWidget {
  final int index;
  final CategoryModel categoryModel;
  final Function? onCategoryClicked;

  const CategoryItemWidget(
      {Key? key,
      required this.index,
      required this.categoryModel,
      this.onCategoryClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onCategoryClicked == null) return;
        onCategoryClicked!(categoryModel);
      },
      child: Container(
        decoration: BoxDecoration(
            //color: categoryModel.backgrounColor,
            borderRadius: BorderRadius.all(
          Radius.circular(5),
        )),
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(categoryModel.image, fit: BoxFit.cover),
            Text(
              categoryModel.name,
              style: Constants.theme.textTheme.bodyMedium,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
