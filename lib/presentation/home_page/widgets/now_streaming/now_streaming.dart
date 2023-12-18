import 'package:flutter/material.dart';

import 'carousel/carousel.dart';

class NowStreaming extends StatelessWidget {
  const NowStreaming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, left: 30, right: 30,bottom: 18),
          child: Text(
            "Now Streaming",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        CarouselSliderBox(),
      ],
    );
  }
}
