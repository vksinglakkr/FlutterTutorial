// lib/Transform\Que04aTransform_rotate.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04a extends StatefulWidget {
  @override
  _Que04aState createState() => _Que04aState();
}

class _Que04aState extends State<Que04a> {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Transform/Que04.png";
  final String video1 = "9z_YNlRlWfA";
  double sliderVal3 = 0.0;
  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
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
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 110,
                  height: 110,
                  color: Colors.yellow,
                  child: Transform.rotate(
                    angle: sliderVal3,
                    origin: Offset(sliderVal1, sliderVal2),
                    alignment: _selectedAlignment,
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
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.red, Colors.blue],
                              begin: FractionalOffset.centerLeft,
                              end: FractionalOffset.centerRight,
                              tileMode: TileMode.repeated,
                            ),
                          )
                          //transform: Matrix4.rotationY(0.5),
                          //transform: Matrix4.identity(),
                          //transform: Matrix4.identity()..rotateZ(pi / 2),
                          //Random Number final random = Random();
                          //transform: Matrix4.rotationZ(random.nextInt(100).toDouble()),
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
        Row(children: [
          Text('angle:'),
          SizedBox(
              width: 300,
              child: Slider(
                value: sliderVal3,
                min: 0.0,
                max: (360 * 3.1415927 / 180),
                divisions: 90,
                label: ((sliderVal3 * 180) / 3.1415927).toStringAsFixed(0) +
                    "(" +
                    (sliderVal3.toStringAsFixed(0)) +
                    ")",
                onChanged: (val) {
                  setState(() {
                    sliderVal3 = val;
                  });
                },
              )),
        ]),
        Row(children: [
          Text("origin: Offset(x,y)"),
          SizedBox(
              width: 100,
              child: Slider(
                value: sliderVal1,
                min: 0.0,
                max: 150.0,
                divisions: 30,
                label: sliderVal1.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal1 = val;
                  });
                },
              )),
          SizedBox(
              width: 100,
              child: Slider(
                value: sliderVal2,
                min: 0.0,
                max: 150.0,
                divisions: 10,
                label: sliderVal2.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal2 = val;
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
