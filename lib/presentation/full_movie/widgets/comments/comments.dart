import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 17,
              ),
              const SizedBox(
                width: 13,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: const TextSpan(
                            text: "Andrew Garfield",
                            children: [
                              TextSpan(text: "  "),
                              TextSpan(text: "2w")
                            ])),
                    const Wrap(
                      children: [
                          Text(
                            "This trailer looks sick! So excited to see this! <3",
                            style: TextStyle(
                              fontSize: 11
                            ),
                          )
                        ],
                    )
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
