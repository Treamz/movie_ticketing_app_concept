import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/data/movie_item.dart';
import 'package:movie_ticketing_app_concept/data/movie_repository.dart';
import 'package:movie_ticketing_app_concept/presentation/home_page/widgets/now_streaming/carousel/carousel_bottom.dart';

import '../../../../full_movie/view/full_movie_page.dart';

class CarouselSliderBox extends StatefulWidget {
  CarouselSliderBox({super.key});

  @override
  State<StatefulWidget> createState() => CarouselSliderBoxState();
}

class CarouselSliderBoxState extends State<CarouselSliderBox> {
  final movieRepository = MovieRepository();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<MovieModel> movies = movieRepository.getMovies();
    return Column(
      children: [
        Container(
          child: CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 0.5,
              height: 300.0,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                _currentIndex = index;
                setState(() {});
              },
            ),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return GestureDetector(
                onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => FullMoviePage(movie: movies[itemIndex]))),
                child: Hero(
                  tag: "movie-${movies[itemIndex].title}",
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            movies[itemIndex].imagePath,
                          ),
                          fit: BoxFit.cover,
                          alignment: FractionalOffset.center,
                        )),
                  ),
                ),
              );
            },
            itemCount: movies.length,
          ),
        ),
        CarouselBottom(movieModel: movies[_currentIndex])
      ],
    );
  }
}
