import 'package:flutter/material.dart';

class GlobalLoadingAnimationWidget extends StatelessWidget {
  final Color color;
  const GlobalLoadingAnimationWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/loading/loading_animation.gif', color: color);
  }
}
