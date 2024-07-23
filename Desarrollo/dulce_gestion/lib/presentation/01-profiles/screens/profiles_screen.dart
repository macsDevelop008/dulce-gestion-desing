import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/configuration/constants/responsive.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    Responsive.widthSize(context, 0.9, 0.9);
    return Container(
      alignment: Alignment.center,
      color: Colors.red.withOpacity(0.0),
      height: heightBase,
      width: widthBase,
      child: Stack(
        alignment: Alignment.center,
        children: [
          //! Base fondo
          Positioned(
            top: heightBase * 0.23,
            //! Base blanco
            child: Container(
                height: heightBase * 0.73,
                width: widthBase * 0.87,
                decoration: BoxDecoration(
                    color: AppColorsRGBA.fourth,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          blurRadius: 30,
                          spreadRadius: 0.7)
                    ],
                    borderRadius:
                        BorderRadius.all(Radius.circular(widthBase * 0.1))),
                //! Componentes
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //! Titulo
                    Container(
                      alignment: Alignment.center,
                      color: Colors.red.withOpacity(.0),
                      width: widthBase * 0.8,
                      height: heightBase * 0.17,
                      child: Text(
                        'Algo Salio Mal...',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'Baloo2',
                            color: AppColorsRGBA.bad,
                            fontWeight: FontWeight.w800,
                            fontSize: Responsive.fontSize(context, 25)),
                      ),
                    ),
                    //! Información
                    Container(
                      alignment: Alignment.center,
                      color: Colors.green.withOpacity(.0),
                      width: widthBase * 0.8,
                      height: heightBase * 0.26,
                      child: Text(
                        'Nisi sint mollit cupidatat qui magna nulla aliquip enim velit. Consequat duis eiusmod deserunt aute voluptate eiusmod irure aliqua deserunt ullamco duis nulla velit. Tempor do deserunt do eiusmod cupidatat mollit veniam. Velit velit duis non pariatur laboris sunt occaecat mollit anim ipsum. Sit ipsum laboris irure officia eu. Qui dolor proident irure officia sit Lorem velit non in veniam occaecat.',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                            fontFamily: 'Baloo2',
                            color: AppColorsRGBA.seventh,
                            fontWeight: FontWeight.w500,
                            fontSize: Responsive.fontSize(context, 20)),
                      ),
                    ),
                    //! Botones
                    Container(
                      alignment: Alignment.center,
                      color: Colors.yellow.withOpacity(.3),
                      width: widthBase * 0.8,
                      height: heightBase * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: widthBase * 0.5,
                            height: heightBase * 0.11,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.circular(widthBase * 0.1)),
                            child: Text('Aceptar',
                                style: TextStyle(
                                  fontFamily: 'Baloo2',
                                  color: AppColorsRGBA.fourth,
                                  fontWeight: FontWeight.w700,
                                  fontSize: Responsive.fontSize(context, 10),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),

          //! Icono animado
          Positioned(
            top: heightBase * 0.03,
            child: Container(
              alignment: Alignment.center,
              width: widthBase * 0.35,
              height: heightBase * 0.35,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 3,
                    spreadRadius: 0.3)
              ], shape: BoxShape.circle, color: AppColorsRGBA.bad),
              child: Icon(
                Icons.close_rounded,
                color: Colors.white,
                size: heightBase * 0.25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
