import 'package:flutter/material.dart';

class Que01 extends StatefulWidget {
  @override
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo FlutterLogo'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.markOnly,
              ),
            ),
          ),
          Center(
            child: Container(
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.stacked,
              ),
            ),
          ),
          Center(
            child: Container(
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
          ),
          Center(
            child: Container(
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.horizontal,
                curve: Curves.easeInOutBack,
                duration: Duration(seconds: 5),
                // textColor: Colors.teal,
              ),
            ),
          ),
          Center(
            child: Container(
              child: FlutterLogo(
                size: 80,
                style: FlutterLogoStyle.horizontal,
                curve: Curves.easeInOutBack,
                duration: Duration(seconds: 5),
                textColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
