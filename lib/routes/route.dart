import 'package:examen_mdcdf/models/menu_option.dart';
import 'package:examen_mdcdf/screen/screens.dart';
import 'package:examen_mdcdf/screen/singnin_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = "home";

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: "home",
      icon: Icons.holiday_village,
      name: "Home Screen",
      screen: const HomeScreen(),
    ),
      MenuOption(
      route: "sign",
      icon: Icons.holiday_village,
      name: "Sign screen",
      screen: const SingninScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for (final option in MenuOptions) {
      AppRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return AppRoutes;
  }
}
