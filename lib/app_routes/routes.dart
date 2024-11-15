import 'package:flutter/material.dart';
import 'package:practica/models/model.dart';
import 'package:practica/screens/homescreen.dart';
import 'package:practica/screens/screen.dart';


class AppRoutes {
  static const String initialRoute = "home";

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

  static final MenuListOptions = <MenuOption> [
    MenuOption(
        route: "eliot_alderson",
        icon: Icons.list_alt_outlined,
        name: "Character: Eliot Alderson",
        screen: const CharacterScreen(
          title: "ELLIOT ALDERSON",
          image: "https://images.wallpapersden.com/image/download/mr-robot-rami-malek-as-elliot-alderson_amZnZWuUmZqaraWkpJRnbW1lrWZrZ2U.jpg",
          description: "Es el protagonista de la serie, interpretado por Rami Malek. Elliot es un brillante ingeniero de ciberseguridad que sufre de trastornos mentales como ansiedad social y depresión. También es un hacker talentoso que lidera a fsociety, un grupo que busca destruir la economía global para liberar al mundo de las grandes corporaciones.",
        )
      ),
      MenuOption(
        route: "mr_robot",
        icon: Icons.list_alt_outlined,
        name: "Character: Mr Robot",
        screen: const CharacterScreen(
          title: "MR. ROBOT",
          image: "https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/series-television/13-cosas-que-no-sabias-de-christian-slater-el-mismisimo-mr.-robot/136726253-1-esl-ES/13-cosas-que-no-sabias-de-Christian-Slater-el-mismisimo-Mr.-Robot.jpg",
          description: "Interpretado por Christian Slater, es una figura enigmática que guía a Elliot y lidera fsociety. Aunque parece ser una persona independiente, su verdadera identidad tiene un gran impacto en la trama y en la mente de Elliot.",
        )
      ),
      MenuOption(
        route: "derlene_alderson",
        icon: Icons.list_alt_outlined,
        name: "Character: Derlene Alderson",
        screen: const CharacterScreen(
          title: "DERLENE ALDERSON",
          image: "https://medias.spotern.com/spots/w640/6/6607-1532336916.jpg",
          description: "Interpretada por Carly Chaikin, es la hermana menor de Elliot y también miembro clave de fsociety. Darlene es una hacker talentosa, valiente y decidida, con una relación complicada con Elliot debido a su comportamiento errático.",
        )
      ),
      MenuOption(
        route: "angela_moss",
        icon: Icons.list_alt_outlined,
        name: "Character: Angela Moss",
        screen: const CharacterScreen(
          title: "ANGELA MOSS",
          image: "https://people.com/thmb/LUME_mYqnJ4o3J9eypJ56Rpttko=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/mr-robot-wp-a0b301b8da374da3b99fa99f13282878.jpg",
          description: "Interpretada por Portia Doubleday, es una amiga de la infancia de Elliot y trabaja en E Corp, la misma compañía que Elliot busca destruir. A lo largo de la serie, su personaje experimenta un desarrollo significativo, enfrentándose a dilemas éticos y personales.",
        )
      ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for(final option in MenuOptions) {
      AppRoutes.addAll({option.route: ( BuildContext context) => option.screen});
    }
    for(final option in MenuListOptions) {
      AppRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return AppRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
  
}