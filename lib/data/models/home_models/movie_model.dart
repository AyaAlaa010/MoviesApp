class MovieModel {
  final int id;
  final String title;
  final String release_date;
  final String poster_path;
  final String backdrop_path;

  MovieModel(
      {required this.id,
      required this.title,
      required this.release_date,
      required this.poster_path,
      required this.backdrop_path});

  factory MovieModel.init(Map<String, dynamic> json) => MovieModel(
      id: json["id"],
      backdrop_path: json["backdrop_path"],
      poster_path: json["poster_path"],
      release_date: json["release_date"],
      title: json["title"]);
}
