// lib/Transform\Que05Transform_3D.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05a extends StatefulWidget {
  @override
  _Que05aState createState() => _Que05aState();
}

class _Que05aState extends State<Que05a> {
  final List<FractionalOffset> _dropdownAlignment = [
    FractionalOffset.topCenter,
    FractionalOffset.topLeft,
    FractionalOffset.topRight,
    FractionalOffset.center,
    FractionalOffset.centerLeft,
    FractionalOffset.centerRight,
    FractionalOffset.bottomCenter,
    FractionalOffset.bottomLeft,
    FractionalOffset.bottomRight,
  ];
  FractionalOffset _selectedAlignment = FractionalOffset.center;
  double sliderVal1 = 3;
  double sliderVal2 = 2;
  bool boolVal = true;
  int _counter = 0;

  double sliderVal3 = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar(" 3D")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 110,
                height: 110,
                color: Colors.yellow,
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(sliderVal1.toInt(), sliderVal2.toInt(),
                        sliderVal3 / 1000) //..setEntry(3, 2, 10 / 1000)
                    ..rotateX(3.14 / 20.0), //..rotateX(3.14 / 20.0),
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
        floatingActionButton: WidgetFab(),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        //   Text("transform: Matrix4.skew('x,y')"),
        Row(children: [
          SizedBox(
              width: 100,
              child: Slider(
                value: sliderVal1,
                min: 2,
                max: 3,
                divisions: 1,
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
                min: 1,
                max: 2,
                divisions: 1,
                label: sliderVal2.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal2 = val;
                  });
                },
              )),
          SizedBox(
              width: 100,
              child: Slider(
                value: sliderVal3,
                min: 10,
                max: 40,
                divisions: 20,
                label: sliderVal3.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal3 = val;
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
            onChanged: (FractionalOffset value) {
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

//Note: https://www.youtube.com/watch?v=9z_YNlRlWfA

