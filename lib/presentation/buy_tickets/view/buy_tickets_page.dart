import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../widgets/seats_board.dart';

class BuyTickets extends StatefulWidget {
  const BuyTickets({super.key});

  @override
  State<StatefulWidget> createState() => BuyTicketsState();
}

class BuyTicketsState extends State<BuyTickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            centerTitle: false,
            title: const Text("Choose Cinema & Seats"),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.place_outlined,
                    size: 15,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "SM City Marikina",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Schedule",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text(
                        "Date: February 2, 2021",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.calendar_month)
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 62,
                child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(90, 90, 92, 0.80),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColors.coralColor, width: 2)),
                        margin: EdgeInsets.only(right: 10, left: 30),
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2:50 PM - 4:45 PM",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Cinema: 1D",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.event_seat,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "25 seats available",
                                  style: TextStyle(
                                      fontSize: 7, fontWeight: FontWeight.w300),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(90, 90, 92, 0.80),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromRGBO(90, 90, 92, 0.80),
                                width: 2)),
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2:50 PM - 4:45 PM",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Cinema: 1D",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.event_seat,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "25 seats available",
                                  style: TextStyle(
                                      fontSize: 7, fontWeight: FontWeight.w300),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(90, 90, 92, 0.80),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromRGBO(90, 90, 92, 0.80),
                                width: 2)),
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2:50 PM - 4:45 PM",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Cinema: 1D",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.event_seat,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "25 seats available",
                                  style: TextStyle(
                                      fontSize: 7, fontWeight: FontWeight.w300),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Seats",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(bottom: 20),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text("Screen",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13
                ),),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SeatsBoard(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "6 seats",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "PHP 1494",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 52, vertical: 19),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: AppColors.coralColor),
                    onPressed: () {},
                    child: const Text(
                      "Get Tickets",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
