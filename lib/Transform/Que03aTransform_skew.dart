// lib/Transform\Que03Transform_skew.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03a extends StatefulWidget {
  @override
  _Que03aState createState() => _Que03aState();
}

class _Que03aState extends State<Que03a> {
  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
  double sliderVal3 = 0.0;
  double sliderVal4 = 0.0;
  final List<Alignment> _dropdownAlignment = [
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  Alignment _selectedAlignment = Alignment.center;
  bool boolVal = true;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Skew")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 110,
                  height: 110,
                  color: Colors.yellow,
                  child: Transform(
//            transform: Matrix4.skewY(10),
//            transform: Matrix4.skewX(10),
                    transform: Matrix4.skew(sliderVal1, sliderVal2),
                    alignment: _selectedAlignment,
                    origin: Offset(sliderVal3, sliderVal4),
                    transformHitTests: boolVal,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _counter = _counter + 1;
                        });
                      },
                      child: Container(
                        height: 110,
                        width: 110,
                        color: Colors.blue.withAlpha(125),
                      ),
                    ),
                  ),
                ),
              ),
              Text("No. of Times Clicked: $_counter"),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
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
        Text("transform: Matrix4.skew('x,y')"),
        Row(children: [
          SizedBox(
              width: 180,
              child: Slider(
                value: sliderVal1,
                min: -1.0,
                max: 1.0,
                divisions: 30,
                label: sliderVal1.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal1 = val;
                  });
                },
              )),
          SizedBox(
              width: 180,
              child: Slider(
                value: sliderVal2,
                min: -1.0,
                max: 1.0,
                divisions: 30,
                label: sliderVal2.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal2 = val;
                  });
                },
              )),
        ]),
        Row(children: [
          Text("origin: Offset(a,b)"),
          SizedBox(
              width: 110,
              child: Slider(
                value: sliderVal3,
                min: 0.0,
                max: 150.0,
                divisions: 10,
                label: sliderVal3.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal3 = val;
                  });
                },
              )),
          SizedBox(
              width: 110,
              child: Slider(
                value: sliderVal4,
                min: 0.0,
                max: 150.0,
                divisions: 10,
                label: sliderVal4.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal4 = val;
                  });
                },
              )),
        ]),
        ListTile(
          title: const Text('alignment:'),
          trailing: DropdownButton(
            hint: Text('Select ...'),
            items: _dropdownAlignment
                .map((element) => DropdownMenuItem(
                      child: Center(
                        child: Text(element.toString()),
                      ),
                      value: element,
                    ))
                .toList(),
            onChanged: (Alignment value) {
              setState(() {
                _selectedAlignment = value;
              });
            },
            isExpanded: false,
            value: _selectedAlignment,
          ),
        ),
      ]),
    );
  }
}
