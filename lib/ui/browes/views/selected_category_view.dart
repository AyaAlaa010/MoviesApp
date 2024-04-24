import 'package:flutter/material.dart';
import 'package:movies_app/data/models/category_model/category_model.dart';
import 'package:movies_app/data/models/home_models/movie_model.dart';
import 'package:movies_app/data/network/api_manager.dart';
import 'package:movies_app/ui/browes/widgets/movies_widget.dart';

import '../../../core/config/app_constants/constants.dart';

class SelectedCategoryView extends StatefulWidget {
  final CategoryModel categoryModel;

  const SelectedCategoryView({Key? key, required this.categoryModel})
      : super(key: key);

  @override
  State<SelectedCategoryView> createState() => _SelectedCategoryViewState();
}

class _SelectedCategoryViewState extends State<SelectedCategoryView> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.fetchCategoryData(widget.categoryModel.id),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              "Something Went Error",
              style: Constants.theme.textTheme.bodyMedium
                  ?.copyWith(color: Colors.white),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        List<MovieModel> moviesList = snapshot.data ?? [];
        return ListView.builder(
          itemBuilder: (context, index) =>
              MoviesWidget(movieModel: moviesList[index]),
          //     Text(
          //   moviesList[index].title,
          //   style: Constants.theme.textTheme.bodyMedium?.copyWith(
          //         color: Colors.white
          // ),),
          itemCount: moviesList.length,
        );
      },
    );
  }
}
