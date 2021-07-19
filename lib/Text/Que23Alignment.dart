//  \lib/Align\Que03Properties.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

class Que23Alignment extends StatefulWidget {
  @override
  _Que23AlignmentState createState() => _Que23AlignmentState();
}

class _Que23AlignmentState extends State<Que23Alignment> {
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

  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Alignment")),
        body: Column(
          children: [
            Text("alignment: $_selectedAlignment"),
            RandomContainer(
              height: 150,
              child: Align(
                alignment: _selectedAlignment,
                child: Text(
                  "Kurukshetra",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Text(
                "alignment: Alignment(${sliderVal1.toStringAsFixed(1)}, ${sliderVal2.toStringAsFixed(1)})"),
            RandomContainer(
              height: 150,
              child: Align(
                alignment: Alignment(sliderVal1, sliderVal2),
                child: Text(
                  "Kurukshetra",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' x, y'),
            SizedBox(
                width: 160,
                child: Slider(
                  value: sliderVal1,
                  min: -1.0,
                  max: 1.0,
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
                  min: -1.0,
                  max: 1.0,
                  divisions: 10,
                  label: sliderVal2.toStringAsFixed(1),
                  onChanged: (val) {
                    setState(() {
                      sliderVal2 = val;
                    });
                  },
                )),
          ],
        ),
      ]),
    );
  }
}
