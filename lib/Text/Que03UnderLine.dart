// lib/Text\Que03UnderLine.dart
import 'dart:ui';

import 'package:flutter/material.dart';

class Que03Text11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que03Text11> {
  // List<TextDecoration> _dropdownDecoration = [
  //   TextDecoration.none,
  //   TextDecoration.lineThrough,
  //   TextDecoration.overline,
  //   TextDecoration.underline,
  //   //  TextDecoration.combine([TextDecoration.underline, TextDecoration.overline]),
  // ];
  // var _selectDecoration = TextDecoration.underline;
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
  double sliderVal1 = 6;
  TextDecorationStyle _decorationStyle = TextDecorationStyle.dashed;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => FontStyle Property'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Text(
          'NIC, Kurukshetra',
          style: TextStyle(
            fontSize: 40,
            decorationColor: _colors[_currentColorIndex],
            decoration: TextDecoration.underline,
            decorationStyle: _decorationStyle,
            decorationThickness: sliderVal1,
          ),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        // ListTile(
        //   title: const Text('decoration:'),
        //   trailing: DropdownButton(
        //     hint: Text('Select ...'),
        //     items: _dropdownDecoration
        //         .map((element) => DropdownMenuItem(
        //               child: Center(
        //                 child: Text(element.toString()),
        //               ),
        //               value: element,
        //             ))
        //         .toList(),
        //     onChanged: (value) {
        //       setState(() {
        //         _dropdownDecoration = value;
        //       });
        //     },
        //     isExpanded: false,
        //     value: _dropdownDecoration,
        //   ),
        // ),
        ListTile(
          title: const Text('decorationStyle:'),
          trailing: DropdownButton<TextDecorationStyle>(
            value: _decorationStyle,
            onChanged: (TextDecorationStyle newVal) {
              if (newVal != null) {
                setState(() => _decorationStyle = newVal);
              }
            },
            items: TextDecorationStyle.values
                .map((TextDecorationStyle val) => DropdownMenuItem(
                      value: val,
                      child: Text(val.toString()),
                    ))
                .toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('decorationThickness:'),
            SizedBox(
                width: 190,
                child: Slider(
                  value: sliderVal1,
                  min: 6,
                  max: 24,
                  divisions: 10,
                  label: sliderVal1.toStringAsFixed(0),
                  onChanged: (val) {
                    setState(() {
                      sliderVal1 = val;
                    });
                  },
                )),
          ],
        ),
        Row(
          children: [
            Text("color:       "),
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
      ]),
    );
  }
}
