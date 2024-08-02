import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
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
    final double heightBase = Responsive.heightSize(context, 0.6, 0.53);
    final double widthBase = Responsive.widthSize(context, 0.9, 0.9);
    return GlobalModalView(
      widthBase: widthBase,
      heightBase: heightBase,
    );
  }
}
