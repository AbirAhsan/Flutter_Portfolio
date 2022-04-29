import 'package:flutter/material.dart';

class CustomColors {
  static Color primaryColor = const Color(0xFF009688);
  static Color secondaryColor = Colors.blue;
  static Color redColor = Colors.red;

  static Color greyColor = const Color(0xFF767474);
  static Color whiteColor = Colors.white;
  static Color blackColor = Colors.black;

  static MaterialColor primaryColorCustom = MaterialColor(0xFF009688, color);
  static Map<int, Color> color = {
    50: const Color.fromRGBO(0, 150, 136, 1),
    100: const Color.fromRGBO(0, 150, 136, .9),
    200: const Color.fromRGBO(0, 150, 136, .8),
    300: const Color.fromRGBO(0, 150, 136, .7),
    400: const Color.fromRGBO(0, 150, 136, .6),
    500: const Color.fromRGBO(0, 150, 136, .5),
    600: const Color.fromRGBO(0, 150, 136, .4),
    700: const Color.fromRGBO(0, 150, 136, .3),
    800: const Color.fromRGBO(0, 150, 136, .2),
    900: const Color.fromRGBO(0, 150, 136, .1),
  };
}
