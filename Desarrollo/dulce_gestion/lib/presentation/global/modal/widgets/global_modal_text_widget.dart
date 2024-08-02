import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';

class GlobalModalTextWidget extends StatelessWidget {
  final double widthBase;
  final double heightBase;
  final String text;
  const GlobalModalTextWidget(
      {super.key,
      required this.widthBase,
      required this.heightBase,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: TextStyle(
          fontFamily: 'Baloo2',
          color: AppColorsRGBA.seventh,
          fontWeight: FontWeight.w500,
          fontSize: Responsive.fontSize(context, 20)),
    );
  }
}
