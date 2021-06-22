import 'package:flutter/material.dart';
import 'dart:math';

class Que06Random extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: View()));
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  // Default Background Color.
  Color colorCode = Colors.lightBlue;

  final Random random = Random();

  generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorCode,
        appBar: AppBar(title: Text('Generate Random Background Color')),
        body: Center(
            child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () => generateRandomColor(),
                  child: Text('Click Here To Generate Random Background Color'),
                ))));
  }
}
