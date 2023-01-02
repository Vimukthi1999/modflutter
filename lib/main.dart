import 'package:flutter/material.dart';
import 'package:modflutterapp/views/home_screen.dart';
import 'package:modflutterapp/views/purchase_screens/purchase_fodder_screen.dart';
import 'package:modflutterapp/views/purchase_screens/purchase_silage_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_cattle_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_equipment_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_fodder_screen.dart';
import 'package:modflutterapp/views/sale_screens/sale_silage_screen.dart';
import 'package:modflutterapp/views/tem_screen.dart';

import 'views/search_advertisement_screen.dart';

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
      home: SaleEquipmentScreen(),
    );
  }
}
