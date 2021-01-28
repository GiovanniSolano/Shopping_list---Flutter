import 'package:flutter/material.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

Widget _loginButton(BuildContext context) {
  // Restangulo clickable
  return Container(
    padding: EdgeInsets.only(top: 50.0, bottom: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5.0,
      onPressed: () => print('Botón iniciar sesión'),
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      color: Colors.white,
      child: Text(
        TextApp.LOGIN,
        style: TextStyle(
            color: Theme.of(context).primaryColor,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget _signupButton(BuildContext context) {
  return Container(
    width: double.infinity,
    child: OutlineButton(
      borderSide: BorderSide(color: Colors.white),
      highlightedBorderColor: Theme.of(context).primaryColorLight,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      onPressed: () => print('Botón de registro'),
      child: Text(TextApp.SINGUP,
          style: TextStyle(fontSize: 18, color: Colors.white)),
    ),
  );
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // scroll. debido a que puede haber dispositivos de pequeño tamaño
        body: SingleChildScrollView(
          child: Container(
            // respta un padding/margen en el lateral
            padding: EdgeInsets.symmetric(horizontal: 20),
            // tomamos el alto de la pantalla del dispositivo
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: DesignWidgets.linearGradientMain(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DesignWidgets.titleCustom(),
                _loginButton(context),
                _signupButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}