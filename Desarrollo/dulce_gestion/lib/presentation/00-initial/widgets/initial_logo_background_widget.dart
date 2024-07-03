import 'package:flutter/material.dart';
import 'dart:math';

class InitialLogoBackgrpundWidget extends StatelessWidget {
  final double width;
  final double height;
  final double? rotation;
  final Color oneColorGradient;
  final Color twoColorGradient;
  const InitialLogoBackgrpundWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.oneColorGradient,
      required this.twoColorGradient,
      this.rotation});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: (rotation ?? 0) * pi / 180,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(width * 0.13)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [oneColorGradient, twoColorGradient])),
      ),
    );
  }
}
