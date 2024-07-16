import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  static const String name = 'initial-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsRGBA.sixth,
      body: PopScope(
          canPop: false,
          onPopInvoked: (pop) {
            debugPrint('Sin Botón Atras');
          },
          child: Container(
            color: Colors.red.withOpacity(0),
            width: Responsive.widthSize(context, 1, 1),
            height: Responsive.heightSize(context, 1, 1),
            child: Stack(
              alignment: Alignment.center,
              children: [
                //! Decoraciones cubos fondo
                const DecorationsBackgroundView(),
                //! Logo
                const InitialLogoView(),
                //! Animación de carga
                Positioned(
                    top: Responsive.heightSize(context, .18, .255),
                    child: const LoadingAnimationView()),
                //! Version de la app
                const Positioned(bottom: 0, child: VersionAppTextView()),
              ],
            ),
          )),
    );
  }
}
