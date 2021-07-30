import 'package:flutter/material.dart';

class Que03Slider extends StatefulWidget {
  @override
  _Que03SliderState createState() => _Que03SliderState();
}

class _Que03SliderState extends State<Que03Slider> {
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Range Slider Demo'),
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
                    child: RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                )),
              ])),
        ));
  }
}
