
import 'package:flutter/material.dart';

import '../res/widgets/app_lan_select.dart';

class temscreen extends StatelessWidget {
  const temscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() {
        appSelectLanguage(context);
      }),
    ));
  }
}