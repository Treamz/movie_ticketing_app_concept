import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/main.dart';

import '../../buy_tickets/view/buy_tickets_page.dart';

class CinemaBox extends StatelessWidget {
  final String title;
  final String cost;
  final String cinemas;
  final double rating;

  const CinemaBox(
      {super.key,
      required this.title,
      required this.cost,
      required this.cinemas,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (BuildContext context) => const BuyTickets())),
      child: Container(
        height: 113,
        decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        padding: EdgeInsets.only(right: 19),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 4 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/cinema1.png",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Flexible(
                child: Container(
              padding: EdgeInsets.only(top: 14),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 13),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 13,
                          ),
                          Text(
                            "$rating",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.airplane_ticket,
                            size: 13,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            cost,
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.movie,
                            size: 13,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            cinemas,
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
