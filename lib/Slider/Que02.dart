import 'package:flutter/material.dart';

class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
  double buttonSize = 40.0;

  void _setButtonSizeValue(double value) {
    setState(() {
      buttonSize = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Text("size " + buttonSize.toInt().toString()),
            new Slider(
                min: 40,
                max: 100,
                value: buttonSize,
                onChanged: _setButtonSizeValue),
          ],
        ),
      ),
    );
  }
}
