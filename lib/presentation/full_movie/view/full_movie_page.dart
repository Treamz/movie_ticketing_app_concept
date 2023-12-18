import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/data/movie_item.dart';
import 'package:movie_ticketing_app_concept/main.dart';
import 'package:movie_ticketing_app_concept/presentation/full_movie/widgets/overview_text.dart';
import 'package:movie_ticketing_app_concept/presentation/select_branch/view/select_branch.dart';

import '../widgets/comments/comments_block.dart';

class FullMoviePage extends StatelessWidget {
  final MovieModel movie;

  const FullMoviePage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 460,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(bottom: 70),
              background: Container(
                child: Hero(
                  tag: "movie-${movie.title}",
                  child: Stack(
                    children: [
                      Positioned(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            movie.imagePath,
                            fit: BoxFit.cover,
                          )),
                      Positioned.fill(
                          child: Container(
                        color: Colors.black.withOpacity(0.2),
                      )),
                      Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: const Icon(
                            Icons.play_circle,
                            color: AppColors.coralColor,
                            size: 50,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: 100,
                          child: Center(
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 29, vertical: 19),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: AppColors.coralColor),
                              onPressed: () => Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (BuildContext context) =>
                                          SelectBranch())),
                              label: const Text(
                                "Get Tickets",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              icon: Icon(Icons.movie_rounded),
                            ),
                          )),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 10,
                          decoration: const BoxDecoration(
                              color: AppColors.backgroundColor,
                              boxShadow: [
                                BoxShadow(
                                    color: AppColors.backgroundColor,
                                    offset: Offset(0, -5),
                                    blurRadius: 20,
                                    spreadRadius: 15),
                                BoxShadow(
                                    color: AppColors.backgroundColor,
                                    offset: Offset(0, -5),
                                    blurRadius: 50,
                                    spreadRadius: 50)
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: getLabels(context),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse_outlined,
                        size: 10,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        movie.duration,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.all(16)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                movie.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ExpandableText(
                text: movie.description,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: CommentsBlock(),
          )
        ],
      ),
    );
  }

  List<Widget> getLabels(context) {
    return movie.labels
        .map((e) => Container(
              decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              margin: EdgeInsets.only(right: 5),
              child: Text(
                e,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ))
        .toList();
  }
}
