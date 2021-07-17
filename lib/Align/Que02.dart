import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align\nConstructor & Properties'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          height: 320,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Container(
                child: Image(
              image: AssetImage("assets/help/Align/Screenshot.png"),
            )),
          ),
        ),
      ),
    );
  }
}
