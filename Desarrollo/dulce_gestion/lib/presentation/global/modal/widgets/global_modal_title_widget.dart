import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';

class GlobalModalTitleWidget extends StatelessWidget {
  final double widthBase;
  final double heightBase;
  final TypeModal typeModal;
  const GlobalModalTitleWidget(
      {super.key,
      required this.widthBase,
      required this.heightBase,
      required this.typeModal});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.pink.withOpacity(0.0),
      width: widthBase * 0.8,
      height: heightBase * 0.12,
      child: Text(
        _title(),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
            fontFamily: 'Baloo2',
            color: _colorTitle(),
            fontWeight: FontWeight.w800,
            fontSize: Responsive.fontSize(context, 25)),
      ),
    );
  }

  Color _colorTitle() {
    if (typeModal == TypeModal.bad) return AppColorsRGBA.bad;
    if (typeModal == TypeModal.good) return AppColorsRGBA.good;
    return AppColorsRGBA.warning;
  }

  String _title() {
    if (typeModal == TypeModal.bad) return 'Algo Salio Mal...';
    if (typeModal == TypeModal.good) return '¡Muy Bien!';
    return '¡Cuidado!';
  }
}
