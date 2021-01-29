import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';

class ContainerShape01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        // Permite determinar una forma por un clipper, determinar un path que determina una forma
        child: ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        // Tamaño del 15%
        height: MediaQuery.of(context).size.height * .15,
        // Toda la pantalla
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: DesignWidgets.linearGradientMain(context),
        ),
      ),
    ));
  }
}
