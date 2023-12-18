import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCommennt extends StatelessWidget {
  const MyCommennt({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CircleAvatar(radius: 17,),
        SizedBox(
          width: 13,
        ),
        Flexible(
            child: SizedBox(
              height: 40,
              child: TextField(
                        decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                hintStyle: TextStyle(fontSize: 11), hintText: "Add a comment..."),
                      ),
            ))
      ],
    );
  }
}
