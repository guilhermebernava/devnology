import 'package:flutter/material.dart';

class AppColors {
  static const darkGrey = Color(0xff2E3746);
  static const orange = Color(0xffFFAE4E);
  static const red = Color(0xffFF7676);
  static const blue = Color(0xff76BAFF);
  static const aquaBlue = Color(0xff4EFFF8);
  static const green = Color(0xff2FC145);
  static const limaGreen = Color(0xffB4FF4E);
  static const yellow = Color(0xffF9C705);

  static LinearGradient createGradient(List<Color> colors) =>
      LinearGradient(colors: colors);
}

class AppMaterialColor {
  static const color = 0xff2E3746;

  static const Map<int, Color> colors = {
    50: Color.fromRGBO(46, 55, 70, 0.098),
    100: Color.fromRGBO(46, 55, 70, .2),
    200: Color.fromRGBO(46, 55, 70, .3),
    300: Color.fromRGBO(46, 55, 70, .4),
    400: Color.fromRGBO(46, 55, 70, .5),
    500: Color.fromRGBO(46, 55, 70, .6),
    600: Color.fromRGBO(46, 55, 70, .7),
    700: Color.fromRGBO(46, 55, 70, .8),
    800: Color.fromRGBO(46, 55, 70, .9),
    900: Color.fromRGBO(46, 55, 70, 1),
  };

  static const materialColor = MaterialColor(
    color,
    colors,
  );
}
