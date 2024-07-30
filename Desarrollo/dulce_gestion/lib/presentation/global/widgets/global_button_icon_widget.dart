import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';

class GlobalButtonIconWidget extends StatelessWidget {
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final VoidCallback? onPressed;

  const GlobalButtonIconWidget(
      {super.key,
      required this.size,
      required this.backgroundColor,
      required this.iconColor,
      required this.icon,
      this.onPressed,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    // TODO: hacer con el Material button
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: IconButton(
        alignment: Alignment.center,
        splashColor: AppColorsRGBA.primary.withOpacity(0.3),
        color: iconColor,
        iconSize: iconSize,
        icon: Icon(icon),
        onPressed: () {},
      ),
    );
  }
}
