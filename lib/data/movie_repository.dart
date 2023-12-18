import 'package:movie_ticketing_app_concept/data/movie_item.dart';

class MovieRepository {
  List<MovieModel> getMovies() {
    return[
      MovieModel(
          duration: "2h 13m",
          title: "Spider-Man: No Way Home",
          description:
          "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it",
          imagePath: "assets/Spidey.png",
          labels: ["13+", "Action", "IMAX", "2 Trailers"]),
      MovieModel(
          duration: "2h 13m",
          title: "Matrix Ressurection",
          description:
          "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it",
          imagePath: "assets/Matrix.png",
          labels: ["18+", "Action", "IMAX", "3 Trailers"]),
      MovieModel(
          duration: "2h 13m",
          title: "Eternals",
          description:
          "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it",
          imagePath: "assets/Eternals.png",
          labels: ["16+", "Action", "IMAX", "1 Trailer"])
    ];
  }
}
