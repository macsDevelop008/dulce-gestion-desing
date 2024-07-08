import 'package:flutter/material.dart';
import 'dart:math';

class GlobalBackgroundRoundedSquareGradient extends StatelessWidget {
  final double width;
  final double height;
  final double roundedCorners;
  final double? rotation;
  final Color oneColorGradient;
  final Color twoColorGradient;

  const GlobalBackgroundRoundedSquareGradient(
      {super.key,
      required this.width,
      required this.height,
      this.rotation,
      required this.oneColorGradient,
      required this.twoColorGradient,
      required this.roundedCorners});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: (rotation ?? 0) * pi / 180,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(roundedCorners)),
            gradient:
                LinearGradient(colors: [oneColorGradient, twoColorGradient])),
      ),
    );
  }
}
