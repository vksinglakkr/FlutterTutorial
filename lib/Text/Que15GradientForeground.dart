import 'package:flutter/material.dart';

class Que14Gradient extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.red, Colors.green, Colors.blue, Colors.yellow],
  ).createShader(Rect.fromLTWH(10.0, 200.0, 200.0, 20.0));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
              child: Text('Greetings, planet!',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()..shader = linearGradient,
                  ))),
        ));
  }
}
