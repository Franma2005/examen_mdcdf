import 'package:examen_mdcdf/models/menu_option.dart';
import 'package:examen_mdcdf/screen/listview_screen_mdcdf.dart';
import 'package:examen_mdcdf/screen/monitores_screen.dart';
import 'package:examen_mdcdf/screen/pistas_screen_mdcd.dart';
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
    MenuOption(
      route: "list",
      icon: Icons.abc,
      name: "List screen",
      screen: const ListviewScreen()
    ),
  ];

  static final ListViweOptions = <MenuOption>[
    MenuOption(
      route: "monitores",
      icon: Icons.access_alarm,
      name: "Monitores Screen",
      screen: const MonitoresScreen()
    ), 
    MenuOption(
      route: "pistas",
      icon: Icons.ac_unit_sharp,
      name: "Pistas",
      screen: const PistasScreen()
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for (final option in MenuOptions) {
      AppRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    for (final option in ListViweOptions) {
      AppRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return AppRoutes;
  }
}
