import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/main.dart';

import '../widgets/cinema_box.dart';

class SelectBranch extends StatelessWidget {
  const SelectBranch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            centerTitle: false,
            title: const Text("Select branch"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SearchBar(
                    elevation: MaterialStateProperty.all(0),
                    hintStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
                    hintText: "Search Malls or Branch",
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 20)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.searchBarColor),
                    leading: const Icon(
                      Icons.search,
                      size: 15,
                    ),
                    trailing: [Icon(Icons.settings, size: 15)],
                  )),
            ),
          ),
          const SliverPadding(
            sliver: SliverToBoxAdapter(
              child: Text(
                "Nearby",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 15),
          ),
          SliverList.list(children: const [
            CinemaBox(
              title: 'SM City Marikina',
              cost: 'PHP 279',
              cinemas: '6 Cinemas',
              rating: 4.9,
            ),
          ]),
          const SliverPadding(
            sliver: SliverToBoxAdapter(
              child: Text(
                "Suggested",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 15),
          ),
          SliverList.list(children: const [
            CinemaBox(
              title: 'Glorietta 4 - Makati',
              cost: 'PHP 249',
              cinemas: '3 Cinemas',
              rating: 4.6,
            ),
            CinemaBox(
              title: 'UP Town Center Mall',
              cost: 'PHP 279',
              cinemas: '6 Cinemas',
              rating: 4.9,
            ),
          ]),
        ],
      ),
    );
  }
}
