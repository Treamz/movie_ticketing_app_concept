import 'package:flutter/material.dart';
import 'package:movie_ticketing_app_concept/main.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({super.key, required this.text});

  final String text;

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isExpanded = !isExpanded),
      child: Wrap(children: <Widget>[
        ConstrainedBox(
            constraints: isExpanded
                ? BoxConstraints()
                : BoxConstraints(maxHeight: 500.0),
            child: Text(
              widget.text,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: !isExpanded ? 7 : 1000,
              style: TextStyle(height: 1.5,fontSize: 11),
            )),
        if (!isExpanded)
          Text(
            "More",
            style: TextStyle(
                color: AppColors.coralColor,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          )
      ]),
    );
  }
}
