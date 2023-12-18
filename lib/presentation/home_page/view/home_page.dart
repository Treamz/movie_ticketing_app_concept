import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/main.dart';
import 'package:movie_ticketing_app_concept/presentation/home_page/widgets/now_streaming/now_streaming.dart';

import '../widgets/coming_soon/coming_soon_widget.dart';
import '../widgets/genre_chooser/genre_chooser.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "All Movies",
                  style: TextStyle(
                      color: AppColors.coralColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "For Kids",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Badge.count(
                  offset: const Offset(14, -8),
                  largeSize: 12,
                  textStyle:
                      const TextStyle(fontSize: 7, fontWeight: FontWeight.w500),
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  count: 2,
                  child: const Text(
                    "My Tickets",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: ComingSoonWidget(),
          ),
          const SliverToBoxAdapter(
            child: GenreChooser(),
          ),
          const SliverToBoxAdapter(
            child: NowStreaming(),
          )
        ],
      ),
    );
  }
}
