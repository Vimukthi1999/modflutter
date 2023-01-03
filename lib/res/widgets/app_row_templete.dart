import 'package:flutter/material.dart';

class AppRowtemplete extends StatelessWidget {
  final Widget one, two, three, four;

  const AppRowtemplete(
      {Key? key,
      required this.one,
      required this.two,
      required this.three,
      required this.four})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            one,
            two,
          ],
        )),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              three,
              four,
            ],
          ),
        ),
      ],
    );
  }
}
