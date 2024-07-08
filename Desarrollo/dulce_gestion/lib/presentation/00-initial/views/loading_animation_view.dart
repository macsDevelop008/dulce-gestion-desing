import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class LoadingAnimationView extends StatelessWidget {
  const LoadingAnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.13,
      child: GlobalLoadingAnimationWidget(
        color: AppColorsRGBA.fourth,
      ),
    );
  }
}
