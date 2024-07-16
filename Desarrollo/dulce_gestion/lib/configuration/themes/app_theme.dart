import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeDataLight = ThemeData.light().copyWith();
}

//! Colores de la app en RGBA
class AppColorsRGBA {
  static Color primary = const Color.fromRGBO(254, 182, 134, 1);
  static Color secondary = const Color.fromRGBO(252, 231, 215, 1);
  static Color third = const Color.fromRGBO(255, 235, 202, 1);
  static Color fourth = const Color.fromRGBO(254, 255, 255, 1);
  static Color fifth = const Color.fromRGBO(219, 104, 102, 1);
  static Color sixth = const Color.fromRGBO(37, 36, 68, 1);
  static Color seventh = const Color.fromRGBO(55, 54, 101, 1);

  static Color bad = const Color.fromRGBO(222, 82, 76, 1);
  static Color good = const Color.fromRGBO(36, 168, 175, 1);
  static Color warning = const Color.fromRGBO(231, 181, 73, 1);
}

//! Colores de la app en HEX
class AppColorsHEX {
  static String transparent = '#00000000';
  static String primary = '#feb686';
  static String secondary = '#fce7d7';
  static String third = '#ffebca';
  static String fourth = '#feffff';
  static String fifth = '#db6866';
  static String sixth = '#252444';
  static String seventh = '#373665';

  static String bad = '#DE524C';
  static String good = '#24A8AF';
  static String warning = '#E7B549';
}
