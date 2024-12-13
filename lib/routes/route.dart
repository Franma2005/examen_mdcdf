import 'package:examen_mdcdf/models/menu_option.dart';
import 'package:examen_mdcdf/screen/screens.dart';
import 'package:flutter/material.dart';



class AppRoutes {
  static const String initialRoute = "home";

  static final MenuOptions = <MenuOption> [
    MenuOption(
      route: "home",
      icon: Icons.holiday_village,
      name: "Home Screen",
      screen: const HomeScreen(),
      ),
      
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for(final option in MenuOptions) {
      AppRoutes.addAll({option.route: ( BuildContext context) => option.screen});
    }

    return AppRoutes;
  }

  
}