import 'package:flutter/material.dart';

Widget customDropDowns(String hintTxt, Function function) {
  return Container(
    height: 55,
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
          style: BorderStyle.solid,
        )),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(hintTxt),
          ),
        ),
        IconButton(
            onPressed: () {
              function();
            },
            icon: const Icon(Icons.arrow_drop_down_circle))
      ],
    ),
  );
}
