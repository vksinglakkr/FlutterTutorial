// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/SplashScreenTheme.dart';

//import 'splashscreen.dart';

//void main() => runApp(MyApp());

void main() async {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Splash( primaryColor: Colors.deepPurple,darkMode: 0,btnColor: Colors.deepPurple,);
    return SplashPersistent();
  }
}
