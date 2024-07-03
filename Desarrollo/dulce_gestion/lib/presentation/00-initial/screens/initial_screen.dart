import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  static const String name = 'initial-screen';

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
      body: PopScope(
          canPop: false,
          onPopInvoked: (pop) {
            debugPrint('Sin Botón Atras');
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //! Logo
                InitialLogoView(),
                //! Puntos animados de carga
                //! Version de la app
              ],
            ),
          )),
    );
  }
}
