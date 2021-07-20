import 'package:flutter/material.dart';

class Que01a extends StatefulWidget {
  @override
  _Que01aState createState() => _Que01aState();
}

class _Que01aState extends State<Que01a> {
  int _counter = 0;
  double sliderVal1 = 50.0;
  double sliderVal2 = 50.0;
  bool boolVal = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
                child: Transform.translate(
                  offset: Offset(sliderVal1, sliderVal2),
                  transformHitTests: boolVal,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _counter = _counter + 1;
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.blue.withAlpha(125),
                    ),
                  ),
                ),
              ),
            ),
            Text("No. of Times Clicked: $_counter"),
          ],
        ),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('transformHitTests:'),
          Row(
            children: <Widget>[
              Radio<bool>(
                  value: true,
                  groupValue: boolVal,
                  onChanged: (bool value) {
                    setState(() => boolVal = value);
                  }),
              const Text('true'),
            ],
          ),
          Row(
            children: <Widget>[
              Radio<bool>(
                  value: false,
                  groupValue: boolVal,
                  onChanged: (bool value) {
                    setState(() => boolVal = value);
                  }),
              const Text('false'),
            ],
          ),
        ]),
        Row(children: [
          Text(' x, y'),
          SizedBox(
              width: 160,
              child: Slider(
                value: sliderVal1,
                min: 0.0,
                max: 220.0,
                divisions: 10,
                label: sliderVal1.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal1 = val;
                  });
                },
              )),
          SizedBox(
              width: 160,
              child: Slider(
                value: sliderVal2,
                min: 0.0,
                max: 220.0,
                divisions: 10,
                label: sliderVal2.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal2 = val;
                  });
                },
              )),
        ]),
      ]),
    );
  }
}
