// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Theme/splashscreen.dart';

//import 'splashscreen.dart';

//void main() => runApp(MyApp());

void main() async {
  runApp(
    MyApp(),
  );
}

Map<int, Color> color = {
  50: Color.fromRGBO(7, 94, 84, .1),
  100: Color.fromRGBO(7, 94, 84, .2),
  200: Color.fromRGBO(7, 94, 84, .3),
  300: Color.fromRGBO(7, 94, 84, .4),
  400: Color.fromRGBO(7, 94, 84, .5),
  500: Color.fromRGBO(7, 94, 84, .6),
  600: Color.fromRGBO(7, 94, 84, .7),
  700: Color.fromRGBO(7, 94, 84, .8),
  800: Color.fromRGBO(7, 94, 84, .9),
  900: Color.fromRGBO(7, 94, 84, 1),
};

MaterialColor custColor = MaterialColor(0xFF075E54, color);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Splash(
//      primaryColor: Colors.deepPurple,
      primaryColor: custColor,
      darkMode: 0,
      btnColor: Colors.white70,
      btnFGColor: Colors.black87,
    );
  }
}
