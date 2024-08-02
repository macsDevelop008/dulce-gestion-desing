import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';

class GlobalModalIconWidget extends StatelessWidget {
  final double widthBase;
  final double heightBase;
  final TypeModal typeModal;
  const GlobalModalIconWidget(
      {super.key,
      required this.widthBase,
      required this.heightBase,
      required this.typeModal});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: widthBase * 0.35,
      height: heightBase * 0.35,
      decoration: BoxDecoration(
        color: _backgroundColor(),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 3,
              spreadRadius: 0.3)
        ],
      ),
      child: Icon(
        _icon(),
        color: Colors.white,
        size: heightBase * 0.22,
      ),
    );
  }

  Color _backgroundColor() {
    if (typeModal == TypeModal.bad) return AppColorsRGBA.bad;
    if (typeModal == TypeModal.good) return AppColorsRGBA.good;
    return AppColorsRGBA.warning;
  }

  IconData _icon() {
    if (typeModal == TypeModal.bad) return Icons.close_rounded;
    if (typeModal == TypeModal.good) return Icons.check_rounded;
    return Icons.warning_rounded;
  }
}
