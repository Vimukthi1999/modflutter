import 'package:flutter/material.dart';

/// required label
Widget appfReqTxt(String txt) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5, top: 5),
    child: Text.rich(
      TextSpan(
        text: txt,
        children: const [
          TextSpan(
            text: ' *',
            style: TextStyle(color: Colors.red),
          ),
        ],
        style: const TextStyle(color: Colors.black54),
      ),
    ),
  );
}

/// normal label
Widget appfTxt(String txt) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5, top: 5),
    child: Text.rich(
      TextSpan(
        text: txt,
        style: const TextStyle(color: Colors.black54),
      ),
    ),
  );
}

Widget appHomeCardTxt(String txt) {
  return Text(txt);
}

Widget appBarTxt(String txt) {
  return Text(txt);
}

Widget drawerTitleTxt(String txt) {
  return Text(txt);
}

Widget drawerFooterTxt(String txt) {
  return Text(txt);
}