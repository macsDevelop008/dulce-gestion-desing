import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:flutter/material.dart';

class ProfilesScreen extends StatelessWidget {
  static const String name = 'profiles-screen';

  const ProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _modal(context)),
    );
  }

  Widget _modal(BuildContext context) {
    final double heightBase = Responsive.heightSize(context, 0.58, 0.51);
    final double widthBase = Responsive.widthSize(context, 0.9, 0.9);
    Responsive.widthSize(context, 0.9, 0.9);
    return Container(
      alignment: Alignment.center,
      color: Colors.red.withOpacity(0.1),
      height: heightBase,
      width: widthBase,
      child: Stack(
        alignment: Alignment.center,
        children: [
          //! Base fondo
          Positioned(
            top: heightBase * 0.25,
            child: Container(
              height: heightBase * 0.7,
              width: widthBase * 0.87,
              decoration: BoxDecoration(
                  color: AppColorsRGBA.fourth,
                  boxShadow: [
                    BoxShadow(
                        color: AppColorsRGBA.sixth.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 0.5)
                  ],
                  borderRadius:
                      BorderRadius.all(Radius.circular(widthBase * 0.1))),
            ),
          ),
          // ! Icono superior
          Image.asset('assets/animations/gif/gif-warnig.gif')
        ],
      ),
    );
  }
}
