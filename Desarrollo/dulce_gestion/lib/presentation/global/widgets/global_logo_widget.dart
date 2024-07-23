import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GlobalLogo extends StatelessWidget {
  final String hexBaseColor;
  final String hexDecorationColor;

  const GlobalLogo(
      {super.key,
      this.hexDecorationColor = '#ffffff',
      this.hexBaseColor = '#f15b24'});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(SvgImages.logoColor(
        hexBaseColor: hexBaseColor, hexDecorationColor: hexDecorationColor));
  }
}
