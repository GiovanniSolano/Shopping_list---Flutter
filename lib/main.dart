import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/MainScreens/homeScreen.dart';
import 'package:shopping_list/MainScreens/login/welcomeScreen.dart';
import 'package:shopping_list/Utils/AssetsImages.dart';
import 'package:shopping_list/Utils/ConstantsApp.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:developer' as developer;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff181c60),
        primaryColorDark: Color(0xff000036),
        primaryColorLight: Color(0xff4a438e),
        accentColor: Color(0xffedecee),
        // backgroundColor: Color(0xff),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

// <div>Iconos diseñados por <a href="https://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.es/" title="Flaticon">www.flaticon.es</a></div>
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Init
  final Future<FirebaseApp> _initializationFirebase = Firebase.initializeApp();
  static const String TAG = 'Main';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializationFirebase,
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            developer.log(TAG + ', Firabse init. ERROR');
            return SnackBar(content: Text('Error al iniciar con firebase'));
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            developer.log(TAG + ', Firabse init. SUCCESSFUL');
            return SplashScreen(
              seconds: ConstantsApp.TIME_SPLASH_SCREEN,
              navigateAfterSeconds: WelcomeScreen(),
              image: AssetsImages.ImageLogo(),
              photoSize: 120,
              loaderColor: Theme.of(context).accentColor,
              loadingText: Text(
                TextApp.LOADING,
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
              gradientBackground: DesignWidgets.linearGradientMain(context),
            );
          }
          return CircularProgressIndicator();
        });
  }
}
