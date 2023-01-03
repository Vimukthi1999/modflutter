import 'package:flutter/material.dart';
import 'package:modflutterapp/views/sub_screen/aiEp_feedback_screen.dart';
import 'package:modflutterapp/views/sub_screen/ai_cancellation_screen.dart';
import 'package:modflutterapp/views/sub_screen/feedback_screen.dart';
import 'package:modflutterapp/views/tem_screen.dart';
import 'route/app_route_names.dart';
import 'route/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TemScreen(),
      // initialRoute: AppRouteName.home,
      // onGenerateRoute: AppRoute.generate,
    );
  }
}
