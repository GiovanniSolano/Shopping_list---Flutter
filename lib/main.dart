import 'package:flutter/material.dart';
import 'package:shopping_list/MainScreens/homeScreen.dart';
import 'package:shopping_list/Utils/AssetsImages.dart';
import 'package:shopping_list/Utils/ConstantsApp.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:splashscreen/splashscreen.dart';

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
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: ConstantsApp.TIME_SPLASH_SCREEN,
      navigateAfterSeconds: HomeScreen(),
      image: AssetsImages.ImageLogo(),
      backgroundColor: Colors.white,
      photoSize: 100,
      loaderColor: Theme.of(context).primaryColor,
      loadingText: Text(TextApp.LOADING),
    );
  }
}
