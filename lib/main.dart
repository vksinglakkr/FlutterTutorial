// lib/main.dart
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'splashscreen.dart';

//void main() => runApp(MyApp());

void main() async {
  runApp(
    EasyDynamicThemeWidget(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          // textTheme: TextTheme(
          //   headline1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          //   bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          //   bodyText2: TextStyle(
          //       fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.red),
//          ),
        ),
        home: Splash());
  }
}
