import 'package:flutter/material.dart';

class QueSystemTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness;
//    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
//        ? 'DarkTheme'
//        : 'LightTheme';
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello $text!'),
        ),
      ),
    );
  }
}
