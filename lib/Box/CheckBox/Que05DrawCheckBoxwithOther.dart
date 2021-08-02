//lib/Box/CheckBox/Que03.dart
//Arun
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que05 extends StatefulWidget {
  @override
  _Que05State createState() => _Que05State();
}

class _Que05State extends State<Que05> {
  bool selected = true;
  double sliderVal1 = 0.2;
  BoxShape shape = BoxShape.rectangle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom checkBox'),
      ),
      body: InkWell(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                shape: shape,
                color: selected ? Colors.green : Colors.white,
                border: Border.all(width: sliderVal1, color: Colors.red)),
            child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: selected
                    ? Icon(
                        Icons.check,
                        size: 18.0,
                        color: Colors.white,
                      )
                    : Container()),
          ),
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Theme.of(context).primaryColorLight,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          CustSlider(
              widthVal: 220,
              maxValue: 5,
              minValue: 1,
              divide: 10,
              propText: '   border:(width:)',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
          CustomValues(
              datatype: BoxShape.values,
              defaultVal: shape,
              propText: "   shape:",
              onValueChanged: (onChange) {
                setState(() {
                  shape = onChange;
                });
              })
        ]),
      ),
    );
  }
}
