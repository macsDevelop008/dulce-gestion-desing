import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';

class VersionAppTextView extends StatelessWidget {
  const VersionAppTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Enviroment.appVersion,
      style: TextStyle(
          fontFamily: 'Baloo2',
          fontWeight: FontWeight.w400,
          color: AppColorsRGBA.fourth,
          fontSize: Responsive.widthSize(context, .042, .04)),
    );
  }
}
