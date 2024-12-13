import 'package:examen_mdcdf/routes/route.dart';
import 'package:examen_mdcdf/screen/screens.dart';
import 'package:examen_mdcdf/screen/singnin_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //home: const Listview2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
    );
  }
}