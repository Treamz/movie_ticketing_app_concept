import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/data/movie_item.dart';
import 'package:movie_ticketing_app_concept/main.dart';

class CarouselBottom extends StatelessWidget {
  final MovieModel movieModel;

  const CarouselBottom({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 17,
        ),
        Text(
          movieModel.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: 9,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: labels(context),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }

  List<Widget> labels(context) {
    return movieModel.labels.length <= 3
        ? movieModel.labels
            .map((e) => Container(
                  color: AppColors.greyColor,
                  child: Text(e),
                ))
            .toList()
        : movieModel.labels
            .sublist(0, 3)
            .map((e) => Container(
                  decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(e,style: Theme.of(context).textTheme.labelSmall,),
                ))
            .toList();
  }
}
