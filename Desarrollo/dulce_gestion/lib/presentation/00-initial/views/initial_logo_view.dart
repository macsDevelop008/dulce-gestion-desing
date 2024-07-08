import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class InitialLogoView extends StatelessWidget {
  const InitialLogoView({super.key});

  @override
  Widget build(BuildContext context) {
    double widthBase = Responsive.widthSize(context, 0.66, 0.6);
    double heightBase = Responsive.heightSize(context, 0.45, 0.34);

    return Container(
      color: Colors.red.withOpacity(0),
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
            oneColorGradient: AppColorsRGBA.primary,
            twoColorGradient: AppColorsRGBA.fifth,
          ),
          //! Logo
          SizedBox(
              width: widthBase * 0.65,
              height: heightBase * 0.65,
              child: GlobalLogo(
                hexBaseColor: AppColorsHEX.fourth,
                hexDecorationColor: AppColorsHEX.transparent,
              ))
        ],
      ),
    );
  }
}
