import 'package:flutter/material.dart';
import 'package:modflutterapp/view_models/auth_vm.dart';
import 'package:provider/provider.dart';

import 'utils/route/app_route_names.dart';
import 'utils/route/routes.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => AuthVM()),
        // ChangeNotifierProvider(create: (create) => DpValueViewModel()),
        // ChangeNotifierProvider(create: (create) => FetchVM()),
        // ChangeNotifierProvider(create: (create) => AuthViewModel()),
      ],
      child: const MyApp(),
    ),
  );
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
      initialRoute: AppRouteName.signin,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
