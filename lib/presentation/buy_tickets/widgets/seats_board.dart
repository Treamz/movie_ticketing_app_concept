import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/main.dart';

class SeatsBoard extends StatefulWidget {
  const SeatsBoard({super.key});

  @override
  State<SeatsBoard> createState() => _SeatsBoardState();
}

class _SeatsBoardState extends State<SeatsBoard> {
  List<Map<String, dynamic>> seatsLeft = [
    {"id": 0, "visible": 0, "reserved": false},
    {"id": 1, "visible": 1, "reserved": false},
    {"id": 2, "visible": 1, "reserved": false},
    {"id": 3, "visible": 1, "reserved": false},
    {"id": 4, "visible": 1, "reserved": true},
    {"id": 5, "visible": 1, "reserved": true},
    {"id": 6, "visible": 1, "reserved": false},
    {"id": 7, "visible": 1, "reserved": false},
    {"id": 8, "visible": 1, "reserved": false},
    {"id": 9, "visible": 1, "reserved": false},
    {"id": 10, "visible": 1, "reserved": false},
    {"id": 11, "visible": 1, "reserved": false},
    {"id": 12, "visible": 1, "reserved": false},
    {"id": 13, "visible": 1, "reserved": true},
    {"id": 14, "visible": 1, "reserved": true},
    {"id": 15, "visible": 1, "reserved": true},
    {"id": 16, "visible": 1, "reserved": true},
    {"id": 17, "visible": 1, "reserved": true},
    {"id": 18, "visible": 1, "reserved": false},
    {"id": 19, "visible": 1, "reserved": false},
    {"id": 20, "visible": 1, "reserved": false},
    {"id": 21, "visible": 1, "reserved": false},
    {"id": 22, "visible": 1, "reserved": false},
    {"id": 23, "visible": 1, "reserved": false},
    {"id": 24, "visible": 1, "reserved": false},
    {"id": 25, "visible": 1, "reserved": false},
    {"id": 26, "visible": 1, "reserved": false},
    {"id": 27, "visible": 1, "reserved": false},
    {"id": 28, "visible": 1, "reserved": false},
    {"id": 29, "visible": 1, "reserved": false},
    {"id": 30, "visible": 1, "reserved": false},
    {"id": 31, "visible": 1, "reserved": false},
    {"id": 32, "visible": 0, "reserved": false},
    {"id": 33, "visible": 1, "reserved": true},
    {"id": 34, "visible": 1, "reserved": true},
    {"id": 35, "visible": 1, "reserved": false},
    {"id": 36, "visible": 1, "reserved": false},
  ];

  List<int> selected = [];

  List<Map<String, dynamic>> seatsRight = [
    {"id": 37, "visible": 1, "reserved": false},
    {"id": 38, "visible": 1, "reserved": false},
    {"id": 39, "visible": 1, "reserved": false},
    {"id": 40, "visible": 0, "reserved": false},
    {"id": 41, "visible": 1, "reserved": true},
    {"id": 42, "visible": 1, "reserved": true},
    {"id": 43, "visible": 1, "reserved": false},
    {"id": 44, "visible": 1, "reserved": false},
    {"id": 45, "visible": 1, "reserved": false},
    {"id": 46, "visible": 1, "reserved": false},
    {"id": 47, "visible": 1, "reserved": false},
    {"id": 48, "visible": 1, "reserved": false},
    {"id": 49, "visible": 1, "reserved": false},
    {"id": 50, "visible": 1, "reserved": true},
    {"id": 51, "visible": 1, "reserved": true},
    {"id": 52, "visible": 1, "reserved": true},
    {"id": 53, "visible": 1, "reserved": true},
    {"id": 54, "visible": 1, "reserved": true},
    {"id": 55, "visible": 1, "reserved": false},
    {"id": 56, "visible": 1, "reserved": false},
    {"id": 57, "visible": 1, "reserved": false},
    {"id": 58, "visible": 1, "reserved": false},
    {"id": 59, "visible": 1, "reserved": false},
    {"id": 60, "visible": 1, "reserved": false},
    {"id": 61, "visible": 1, "reserved": false},
    {"id": 62, "visible": 1, "reserved": false},
    {"id": 63, "visible": 1, "reserved": false},
    {"id": 64, "visible": 1, "reserved": false},
    {"id": 65, "visible": 1, "reserved": false},
    {"id": 66, "visible": 1, "reserved": false},
    {"id": 67, "visible": 1, "reserved": false},
    {"id": 68, "visible": 1, "reserved": false},
    {"id": 69, "visible": 1, "reserved": false},
    {"id": 70, "visible": 1, "reserved": true},
    {"id": 71, "visible": 1, "reserved": true},
    {"id": 72, "visible": 0, "reserved": false},
    {"id": 73, "visible": 1, "reserved": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      childAspectRatio: 4 / 4,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      children: List.generate(
                        36,
                        (index) {
                          return Visibility(
                            visible:
                                seatsLeft[index]["visible"] == 1 ? true : false,
                            child: GestureDetector(
                              onTap: () => setState(() {
                                if (selected.contains(seatsLeft[index]["id"])) {
                                  selected.remove(seatsLeft[index]["id"]);
                                } else {
                                  selected.add(seatsLeft[index]["id"]);
                                }
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: getBoxColor(seatsLeft, index),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: AppColors.greyColor,
                                        width: 1.5)),
                                margin: const EdgeInsets.all(5),
                              ),
                            ),
                          );
                        },
                      ))),
              Spacer(
                flex: 1,
              ),
              Expanded(
                  flex: 3,
                  child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      childAspectRatio: 4 / 4,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      children: List.generate(
                        36,
                        (index) {
                          return Visibility(
                            visible: seatsRight[index]["visible"] == 1
                                ? true
                                : false,
                            child: GestureDetector(
                              onTap: () => setState(() {
                                if (selected
                                    .contains(seatsRight[index]["id"])) {
                                  selected.remove(seatsRight[index]["id"]);
                                } else {
                                  selected.add(seatsRight[index]["id"]);
                                }
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: getBoxColor(seatsRight, index),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: AppColors.greyColor,
                                        width: 1.5)),
                                margin: const EdgeInsets.all(5),
                              ),
                            ),
                          );
                        },
                      ))),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5,vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greyColor,width: 1.5)
                    ),
                    width: 17,height: 17,),
                  SizedBox(width: 5,),
                  Text("Available")
                ],),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.greySeatColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.greySeatColor,width: 1.5)
                    ),
                    width: 17,height: 17,),
                  SizedBox(width: 5,),
                  Text("Reserved")
                ],),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.coralColor,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.coralColor,width: 1.5)
                    ),
                    width: 17,height: 17,),
                  SizedBox(width: 5,),
                  Text("Selected")
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }

  Color getBoxColor(array, index) {
    if (array[index]["reserved"] == true) {
      return AppColors.greySeatColor;
    } else if (selected.contains(array[index]["id"])) {
      return AppColors.coralColor;
    } else {
      return AppColors.backgroundColor;
    }
    return AppColors.backgroundColor;
  }
}
