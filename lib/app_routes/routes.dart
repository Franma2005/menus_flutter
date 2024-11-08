import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:practica/models/model.dart';
import 'package:practica/screens/homescreen.dart';
import 'package:practica/screens/screen.dart';


class AppRoutes {
  static const initialRoute = "home";

  static final MenuOptions = <MenuOption> [
    MenuOption(
      route: "home",
      icon: Icons.holiday_village,
      name: "Home Screen",
      screen: const HomeScreen(),
      ),
      MenuOption(
        route: "listview1",
        icon: Icons.abc,
        name: "List View 1",
        screen: const Listview1Screen(),
      ),
      MenuOption(
        route: "listview2",
        icon: Icons.access_alarm_rounded,
        name: "List View 2",
        screen: const Listview2Screen(),
      ),
      MenuOption(
        route: 'card',
        icon: Icons.track_changes,
        name: "Card",
        screen: const CardScreen(),
      ),
      MenuOption(
        route: 'alert',
        icon: Icons.pageview,
        name: "Alert",
        screen: const AlertScreen(),
      ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for(final option in MenuOptions) {
      AppRoutes.addAll({option.route: ( BuildContext context) => option.screen});
    }

    return AppRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
  
}