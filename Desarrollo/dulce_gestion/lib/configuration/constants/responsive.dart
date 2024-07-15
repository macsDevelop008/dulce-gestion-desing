import 'package:flutter/material.dart';

class Responsive {
  //h = 667, 867
  //w = 375 , 411

  static double fontSize(BuildContext context, double fontSize) {
    return MediaQuery.textScalerOf(context).scale(fontSize);
  }

  static double heightSize(
      BuildContext context, double sizeSmall, double sizeBig) {
    // Tamaño del contexto(pantalla) actual
    final size = MediaQuery.of(context).size;

    // Calcula el tamaño final
    return size.height <= 700 ? size.height * sizeSmall : size.height * sizeBig;
  }

  static double widthSize(
      BuildContext context, double sizeSmall, double sizeBig) {
    // Tamaño del contexto(pantalla) actual
    final size = MediaQuery.of(context).size;

    // Calcula el tamaño final
    return size.width <= 380 ? size.width * sizeSmall : size.width * sizeBig;
  }
}
