import 'package:dulce_gestion/configuration/configuration.dart';
import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:flutter/material.dart';

class GlobalModalView extends StatelessWidget {
  final double widthBase;
  final double heightBase;
  const GlobalModalView(
      {super.key, required this.widthBase, required this.heightBase});

  @override
  Widget build(BuildContext context) {
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
            top: heightBase * 0.165,
            //! Base blanco
            child: Container(
                height: heightBase * 0.73,
                width: widthBase * 0.87,
                decoration: BoxDecoration(
                    color: AppColorsRGBA.fourth,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 20,
                          spreadRadius: 0.4)
                    ],
                    borderRadius:
                        BorderRadius.all(Radius.circular(widthBase * 0.1))),
                //! Componentes
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //! Titulo
                    GlobalModalTitleWidget(
                      widthBase: widthBase,
                      heightBase: heightBase,
                      typeModal: TypeModal.warning,
                    ),
                    //! Texto de Información
                    Container(
                      alignment: Alignment.center,
                      color: Colors.green.withOpacity(0.0),
                      width: widthBase * 0.8,
                      height: heightBase * 0.26,
                      child: GlobalModalTextWidget(
                        widthBase: widthBase,
                        heightBase: heightBase,
                        text:
                            'Fugiat non ad esse amet. Fugiat aliquip ex ex id. Laborum aute pariatur elit nisi occaecat. Excepteur sunt mollit amet tempor. Aute id pariatur ullamco sunt mollit sunt dolore dolore consequat.',
                      ),
                    ),
                    //! Botones
                    Container(
                      alignment: Alignment.center,
                      color: Colors.yellow.withOpacity(.0),
                      width: widthBase * 0.8,
                      height: heightBase * 0.15,
                      child: GlobalModalActionsWidget(
                        widthBase: widthBase,
                        heightBase: heightBase,
                        onPressedAccept: () {},
                        onPressedCancel: () {},
                      ),
                    )
                  ],
                )),
          ),
          //! Icono superior
          Positioned(
            top: heightBase * 0.03,
            child: GlobalModalIconWidget(
              widthBase: widthBase,
              heightBase: heightBase,
              typeModal: TypeModal.bad,
            ),
          ),
        ],
      ),
    );
  }
}
