// lib\Text\Que15GradientForeground.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que15Gradient11 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que15Gradient.png";
  final String video1 = "";

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.red, Colors.green, Colors.blue, Colors.yellow],
  ).createShader(Rect.fromLTWH(10.0, 200.0, 200.0, 20.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text => foreground: Paint()'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Center(
              child: Text('Greetings, planet!',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()..shader = linearGradient,
                  ))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade300,
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
