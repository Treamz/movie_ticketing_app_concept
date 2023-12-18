import 'package:flutter/cupertino.dart';

import 'comments.dart';
import 'my_comment.dart';

class CommentsBlock extends StatelessWidget {
  const CommentsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text("10.4K Comments"), MyCommennt(), Comments()],
      ),
    );
  }
}
