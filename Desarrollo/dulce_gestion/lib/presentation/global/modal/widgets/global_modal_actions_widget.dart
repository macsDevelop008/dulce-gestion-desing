import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class GlobalModalActionsWidget extends StatelessWidget {
  final double widthBase;
  final double heightBase;
  final VoidCallback? onPressedAccept;
  final VoidCallback? onPressedCancel;
  const GlobalModalActionsWidget(
      {super.key,
      required this.widthBase,
      required this.heightBase,
      this.onPressedAccept,
      this.onPressedCancel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Botón aceptar
        if (onPressedAccept != null) ...[
          GlobalButtonTextWidget(
            width: widthBase * 0.4,
            height: heightBase * 0.11,
            onPressed: onPressedAccept != null
                ? () {
                    onPressedAccept!();
                  }
                : null,
            text: 'Aceptar',
            textSize: heightBase * 0.06,
            backgroundColor: AppColorsRGBA.good,
            textColor: AppColorsRGBA.sixth,
          ),
        ],

        // Botón cancelar
        if (onPressedCancel != null) ...[
          GlobalButtonIconWidget(
            size: heightBase * 0.12,
            iconSize: heightBase * 0.085,
            backgroundColor: Colors.transparent,
            iconColor: AppColorsRGBA.sixth,
            icon: Icons.close_rounded,
            onPressed: onPressedCancel != null
                ? () {
                    onPressedCancel!();
                  }
                : null,
          )
        ],
      ],
    );
  }
}
