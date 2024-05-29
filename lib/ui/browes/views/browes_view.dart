import 'package:flutter/material.dart';
import 'package:movies_app/data/models/category_model/category_model.dart';
import 'package:movies_app/main.dart';
import 'package:movies_app/ui/browes/views/selected_category_view.dart';

import '../../../core/config/app_constants/constants.dart';
import '../widgets/category_item_widget.dart';


class BrowseView extends StatefulWidget {
  const BrowseView({Key? key}) : super(key: key);

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
  List<CategoryModel> categoryList = [
    CategoryModel(
        id: "28",
        name: "Action",
        image: "assets/images/action.png"
    ),
    CategoryModel(
        id: "12",
        name: "Adventure",
        image: "assets/images/adventure.png"
    ),
    CategoryModel(
        id: "16",
        name: "Animation",
        image: "assets/images/animation.png"
    ),
    CategoryModel(
        id: "35",
        name: "Comedy",
        image: "assets/images/comedy.png"
    ),
    CategoryModel(
        id: "80",
        name: "Crime",
        image: "assets/images/crime.png"
    ),
    CategoryModel(
        id: "99",
        name: "Documentary",
        image: "assets/images/document.jpeg"
    ),
    CategoryModel(
        id: "18",
        name: "Drama",
        image: "assets/images/drama.png"
    ),
    CategoryModel(
        id: "10751",
        name: "Family",
        image: "assets/images/family.png"
    ),
    CategoryModel(
        id: "14",
        name: "Fantasy",
        image: "assets/images/fantasy.png"
    ),
    CategoryModel(
        id: "36",
        name: "History",
        image: "assets/images/history.png"
    ),
    CategoryModel(
        id: "27",
        name: "Horror",
        image: "assets/images/horror.jpg"
    ),
    CategoryModel(
        id: "10402",
        name: "Music",
        image: "assets/images/music.png"
    ),
    CategoryModel(
        id: "9648",
        name: "Mystery",
        image: "assets/images/mystery.png"
    ),
    CategoryModel(
        id: "10749",
        name: "Romance",
        image: "assets/images/romantic.png"
    ),
    CategoryModel(
        id: "878",
        name: "Science Fiction",
        image: "assets/images/science fiction.png"
    ),
    CategoryModel(
        id: "10770",
        name: "TV Movie",
        image: "assets/images/tvmovies.png"
    ),
    CategoryModel(
        id: "53",
        name: "Thriller",
        image: "assets/images/thriller.png"
    ),
    CategoryModel(
        id: "10752",
        name: "War",
        image: "assets/images/war.png"
    ),
    CategoryModel(
        id: "37",
        name: "Western",
        image: "assets/images/western.png"
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: selectedCategory == null ?
      Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 77, bottom: 20, right: 170),
            child: Text("Browse Categories",
              style: Constants.theme.textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
              textAlign: TextAlign.left,

            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 3 / 2,

              ),
              itemBuilder: (context, index) =>
                  CategoryItemWidget(
                    index: index,
                    categoryModel: categoryList[index],
                    onCategoryClicked: onCategoryClicked,


                  ),
              itemCount: categoryList.length,
            ),
          )

        ],
      )
          : SelectedCategoryView(categoryModel: selectedCategory!,)
      ,
    );
  }

  CategoryModel? selectedCategory;

  void onCategoryClicked(CategoryModel categoryModel) {
    setState(() {
      selectedCategory = categoryModel;
    });
    print(categoryModel.id);
  }

  void onDrawerClick() {
    setState(() {
      selectedCategory = null;
    });
    navigatorKey.currentState!.pop();
  }
}


