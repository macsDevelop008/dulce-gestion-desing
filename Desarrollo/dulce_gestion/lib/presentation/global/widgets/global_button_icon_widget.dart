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
      required this.onPressed,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Icono
          Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          // Evento
          SizedBox(
            height: size,
            width: size,
            child: MaterialButton(
              onPressed: onPressed != null
                  ? () {
                      onPressed!();
                    }
                  : null,
              shape: const CircleBorder(),
            ),
          )
        ],
      ),
    );
  }
}
