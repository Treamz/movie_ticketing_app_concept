class MovieModel {
  String title;
  String imagePath;
  List<String> labels;
  String description;
  String duration;

  MovieModel(
      {required this.title,
      required this.description,
      required this.imagePath,
      required this.labels,
      required this.duration});
}
