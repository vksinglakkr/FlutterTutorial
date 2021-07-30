import 'package:flutter/material.dart';

class Que04Slider extends StatefulWidget {
  @override
  _Que04SliderState createState() => _Que04SliderState();
}

class _Que04SliderState extends State<Que04Slider> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Slider Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                Icon(
                  Icons.volume_up,
                  size: 40,
                ),
                new Expanded(
                    child: Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 20.0,
                        divisions: 10,
                        activeColor: Colors.green,
                        inactiveColor: Colors.orange,
                        label: 'Set volume value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} dollars';
                        })),
              ])),
        ));
  }
}
