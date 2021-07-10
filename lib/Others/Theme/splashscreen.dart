import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/HomeScreen.dart';
import 'package:page_transition/page_transition.dart';

//import 'pages/HomeScreen.dart';

class Splash extends StatelessWidget {
  final Color primaryColor, btnColor, btnFGColor;
  final int darkMode;
  const Splash(
      {key, this.primaryColor, this.darkMode, this.btnColor, this.btnFGColor});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: this.primaryColor,
          brightness: (darkMode == 0) ? Brightness.light : Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(this.btnColor),
              foregroundColor:
                  MaterialStateProperty.all<Color>(this.btnFGColor),
            ),
          ),
          buttonTheme: ButtonThemeData(buttonColor: Colors.blueAccent),
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            bodyText2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        home: SafeArea(
          child: AnimatedSplashScreen(
            duration: 2000,
            splash: FlutterLogo(
              size: 600,
              style: FlutterLogoStyle.horizontal,
            ),
            nextScreen: HomeScreen(),
            splashTransition: SplashTransition.scaleTransition,
            pageTransitionType: PageTransitionType.leftToRightWithFade,
//            backgroundColor: Colors.deepPurple,
          ),
        ));
//      debugShowCheckedModeBanner: false,
  }
}

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
// //    return HomeScreen();
//     return MainTheme();
//   }
// }
