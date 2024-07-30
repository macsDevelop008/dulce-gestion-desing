import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';

class GlobalButtonTextWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final double textSize;
  final Color backgroundColor;
  final Color textColor;
  final double? borderRadius;
  final VoidCallback? onPressed;

  const GlobalButtonTextWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.textSize,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: onPressed != null
              ? backgroundColor
              : backgroundColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(borderRadius ?? height * 0.17)),
      child: MaterialButton(
        onPressed: onPressed != null
            ? () {
                onPressed!();
              }
            : null,
        splashColor: AppColorsRGBA.primary.withOpacity(0.3),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? height * 0.17)),
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          child: Text('Aceptar',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Baloo2',
                color:
                    onPressed != null ? textColor : textColor.withOpacity(0.8),
                fontWeight: FontWeight.w700,
                fontSize: textSize,
              )),
        ),
      ),
    );
  }
}
