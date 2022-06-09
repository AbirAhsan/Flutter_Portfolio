import 'package:flutter/material.dart';

class CustomColors {
  static const Color primary = Color(0xFF0F436B);
  static const Color secondary = Color(0xFF0067b3);

  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color offWhite = Color(0xFFD2D1D1);
  static const Color wrong = Color(0xFFFE0404);
  static const Color success = Color(0xFF4CAF50);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color black = Color(0xFF000000);

  static MaterialColor primaryColorCustom = MaterialColor(0xFF0F436B, color);
  static Map<int, Color> color = {
    50: const Color.fromRGBO(15, 67, 107, .1),
    100: const Color.fromRGBO(15, 67, 107, .2),
    200: const Color.fromRGBO(15, 67, 107, .3),
    300: const Color.fromRGBO(15, 67, 107, .4),
    400: const Color.fromRGBO(15, 67, 107, .5),
    500: const Color.fromRGBO(15, 67, 107, .6),
    600: const Color.fromRGBO(15, 67, 107, .7),
    700: const Color.fromRGBO(15, 67, 107, .8),
    800: const Color.fromRGBO(15, 67, 107, .9),
    900: const Color.fromRGBO(15, 67, 107, 1),
  };
}
