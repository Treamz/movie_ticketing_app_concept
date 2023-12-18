import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/main.dart';

class GenreChooser extends StatelessWidget {
  const GenreChooser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 26,bottom: 15),
        height: 28,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 22),
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: AppColors.coralColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "Action",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "Comedy",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "Romance",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "Thriller",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  "Fantasy",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ],
        ));
  }
}
