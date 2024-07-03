import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class InitialLogoView extends StatelessWidget {
  const InitialLogoView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthBase = size.width * 0.7;
    double heightBase = size.height * 0.38;
    return Container(
      color: Colors.red.withOpacity(1),
      width: widthBase,
      height: heightBase,
      child: Stack(
        alignment: Alignment.center,
        children: [
          //! Base Logo cuadrado de fondo
          InitialLogoBackgrpundWidget(
            width: widthBase * 0.8,
            height: heightBase * 0.8,
            rotation: -9,
            oneColorGradient: Colors.yellow,
            twoColorGradient: Colors.green,
          ),
          //! Logo
        ],
      ),
    );
  }
}
