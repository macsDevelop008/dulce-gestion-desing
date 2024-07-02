import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  static const String name = 'initial-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
          canPop: false,
          onPopInvoked: (pop) {
            debugPrint('event');
          },
          child: BackgroundCurveDecoration(
            color: Colors.pink,
            scale: .1,
          )),
    );
  }
}
