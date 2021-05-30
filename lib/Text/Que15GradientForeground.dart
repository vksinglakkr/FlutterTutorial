import 'package:flutter/material.dart';

class Que15Gradient11 extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.red, Colors.green, Colors.blue, Colors.yellow],
  ).createShader(Rect.fromLTWH(10.0, 200.0, 200.0, 20.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => foreground: Paint()'),
      ),
      body: Center(
          child: Text('Greetings, planet!',
              style: TextStyle(
                fontSize: 40,
                foreground: Paint()..shader = linearGradient,
              ))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
