class CategoryModel {
  final String id;
  final String name;
  final String image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
  });
// factory CategoryModel.init(Map<String, dynamic> json) => CategoryModel(
//   id: json["id"],
//   name: json["name"],
// );
}
