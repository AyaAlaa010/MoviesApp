class PopularMovie {
  final int id;
  final String title;
  final String release_date;
  final String poster_path;
  final String backdrop_path;

  PopularMovie(
      {required this.id,
      required this.title,
      required this.release_date,
      required this.poster_path,
      required this.backdrop_path});

  factory PopularMovie.init(Map<String, dynamic> json) => PopularMovie(
      id: json["id"],
      backdrop_path: json["backdrop_path"],
      poster_path: json["poster_path"],
      release_date: json["release_date"],
      title: json["title"]);
}
