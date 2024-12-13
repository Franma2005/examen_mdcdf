import 'package:examen_mdcdf/routes/route.dart';
import 'package:examen_mdcdf/screen/singnin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const FadeInImage(
            image: NetworkImage("https://static-00.iconduck.com/assets.00/flutter-icon-256x256-ngd48v7a.png"),
            placeholder: AssetImage("assets/amalie-steiness.gif"),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 3000),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(
                        context, AppRoutes.MenuOptions[1].route);
            },
            child: const Text("Sign in"),
          ),
          const FloatingActionButton(
            onPressed: null,
            child: Text("Sign in"),
          )
        ],
      ),
    );
  }
}
