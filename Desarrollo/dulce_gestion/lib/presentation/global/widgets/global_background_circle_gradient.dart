import 'package:flutter/material.dart';

class GlobalBackgroundCircleGradient extends StatelessWidget {
  final double size;
  final Color oneColorGradient;
  final Color twoColorGradient;
  const GlobalBackgroundCircleGradient(
      {super.key,
      required this.size,
      required this.oneColorGradient,
      required this.twoColorGradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient:
              RadialGradient(colors: [oneColorGradient, twoColorGradient])),
    );
  }
}
