import 'dart:math';

import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GlobalCurveBackgroundDecoration extends StatelessWidget {
  final String hexBaseColor;
  final double opacity;
  final double rotation;
  final double scale;
  const GlobalCurveBackgroundDecoration(
      {super.key,
      required this.hexBaseColor,
      required this.opacity,
      required this.rotation,
      required this.scale});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Transform.rotate(
          angle: rotation * pi / 180,
          child: Transform.scale(
            scale: scale,
            child: SvgPicture.string(
                SvgImages.curveBackground(baseColor: hexBaseColor)),
          )),
    );
  }
}
