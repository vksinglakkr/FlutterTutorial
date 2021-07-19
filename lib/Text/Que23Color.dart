//  \lib/Align\Que03Properties.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que23Color extends StatefulWidget {
  @override
  _Que23ColorState createState() => _Que23ColorState();
}

class _Que23ColorState extends State<Que23Color> {
  final List<Color> _colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.amber,
    Colors.indigo,
    Colors.cyan
  ];
  final List<String> _colorToShow = <String>[
    "Colors.red",
    "Colors.blue",
    "Colors.green",
    "Colors.yellow",
    "Colors.orange",
    "Colors.amber",
    "Colors.indigo",
    "Colors.cyan"
  ];
  int _currentColorIndex = 0;
  int _currentbackColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("color, backgroundColor")),
        body: Center(
          child: Column(
            children: [
              Spacer(flex: 1),
              Text(
                  "style: TextStyle(\ncolor: ${_colorToShow[_currentColorIndex]},\nbackgroundColor: ${_colorToShow[_currentbackColorIndex]})"),
              Container(
                color: Colors.grey.shade300,
                height: 300,
                width: 325,
                child: Center(
                  child: Text(
                    "Kurukshetra",
                    style: TextStyle(
                      fontSize: 50,
                      color: _colors[_currentColorIndex],
                      backgroundColor: _colors[_currentbackColorIndex],
                    ),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("color:"),
            Container(
              child: DropdownButton(
                value: _currentColorIndex,
                items: <DropdownMenuItem>[
                  DropdownMenuItem(
                    value: 0,
                    child: Text(_colorToShow[0]),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text(_colorToShow[1]),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text(_colorToShow[2]),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text(_colorToShow[3]),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text(_colorToShow[4]),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _currentColorIndex = value;
                  });
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("backgroundColor:"),
            Container(
              child: DropdownButton(
                value: _currentbackColorIndex,
                items: <DropdownMenuItem>[
                  DropdownMenuItem(
                    value: 0,
                    child: Text(_colorToShow[0]),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text(_colorToShow[1]),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text(_colorToShow[2]),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text(_colorToShow[3]),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text(_colorToShow[4]),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _currentbackColorIndex = value;
                  });
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
