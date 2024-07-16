import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class DecorationsBackgroundView extends StatelessWidget {
  const DecorationsBackgroundView({super.key});

  @override
  Widget build(BuildContext context) {
    double widthBase = Responsive.widthSize(context, 1.0, 1.0);
    double heightBase = Responsive.heightSize(context, 1.0, 1.0);
    return Container(
      width: widthBase,
      height: heightBase,
      color: Colors.red.withOpacity(0),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Cuadrado arriba-derecha
          Positioned(
            top: 0,
            right: Responsive.widthSize(context, -0.03, -0.03),
            child: GlobalBackgroundRoundedSquareGradient(
              width: Responsive.widthSize(context, 0.25, 0.25),
              height: Responsive.widthSize(context, 0.25, 0.25),
              oneColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              twoColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              roundedCorners: Responsive.widthSize(context, 0.035, 0.035),
            ),
          ),
          // Cuadrado abajo-izquierda
          Positioned(
            bottom: Responsive.widthSize(context, -0.05, -0.05),
            left: Responsive.widthSize(context, -0.05, -0.05),
            child: GlobalBackgroundRoundedSquareGradient(
              width: Responsive.widthSize(context, 0.18, 0.18),
              height: Responsive.widthSize(context, 0.18, 0.18),
              oneColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              twoColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              roundedCorners: Responsive.widthSize(context, 0.035, 0.035),
            ),
          ),
          // logo-pequeño - superior derecha
          Positioned(
            top: Responsive.widthSize(context, 0.6, 0.6),
            right: Responsive.widthSize(context, 0.2, 0.2),
            child: GlobalBackgroundRoundedSquareGradient(
              width: Responsive.widthSize(context, 0.11, 0.11),
              height: Responsive.widthSize(context, 0.11, 0.11),
              oneColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              twoColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              roundedCorners: Responsive.widthSize(context, 0.017, 0.017),
              rotation: 5,
            ),
          ),
          // logo-pequeño - superior(arriba del grande) izquierda
          Positioned(
            top: Responsive.widthSize(context, 0.6, 0.6),
            left: Responsive.widthSize(context, 0.1, 0.1),
            child: GlobalBackgroundRoundedSquareGradient(
              width: Responsive.widthSize(context, 0.055, 0.055),
              height: Responsive.widthSize(context, 0.055, 0.055),
              oneColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              twoColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              roundedCorners: Responsive.widthSize(context, 0.01, 0.01),
              rotation: 5,
            ),
          ),
          // logo-pequeño - inferior izquierda
          Positioned(
            top: Responsive.widthSize(context, 1.36, 1.36),
            left: Responsive.widthSize(context, 0.18, 0.18),
            child: GlobalBackgroundRoundedSquareGradient(
              width: Responsive.widthSize(context, 0.09, 0.09),
              height: Responsive.widthSize(context, 0.09, 0.09),
              oneColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              twoColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              roundedCorners: Responsive.widthSize(context, 0.017, 0.017),
              rotation: 5,
            ),
          ),
          // logo-grande inferior derecho
          Positioned(
            top: Responsive.widthSize(context, 1.2, 1.2),
            right: Responsive.widthSize(context, 0.12, 0.12),
            child: GlobalBackgroundRoundedSquareGradient(
              width: Responsive.widthSize(context, 0.26, 0.26),
              height: Responsive.widthSize(context, 0.26, 0.26),
              oneColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              twoColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              roundedCorners: Responsive.widthSize(context, 0.017, 0.017),
              rotation: 3,
            ),
          ),
          // logo-grande superior izquierdo
          Positioned(
            top: Responsive.widthSize(context, 0.7, 0.7),
            left: Responsive.widthSize(context, 0.15, 0.15),
            child: GlobalBackgroundRoundedSquareGradient(
              width: Responsive.widthSize(context, 0.23, 0.23),
              height: Responsive.widthSize(context, 0.23, 0.23),
              oneColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              twoColorGradient: AppColorsRGBA.seventh.withOpacity(0.2),
              roundedCorners: Responsive.widthSize(context, 0.017, 0.017),
              rotation: 3,
            ),
          ),
        ],
      ),
    );
  }
}
