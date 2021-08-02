//lib/Box/CheckBox/Que06RoundCorner.dart
//Arun
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06 extends StatefulWidget {
  @override
  _Que06State createState() => _Que06State();
}

class _Que06State extends State<Que06> {
  bool _checkBoxVal = true;
  double sliderVal1 = 2;
  double sliderVal2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Shaped checkBox'),
      ),
      body: Center(
        child: Container(
          child: Checkbox(
            activeColor: Colors.red,
            checkColor: Colors.amber,
            fillColor: MaterialStateProperty.all(Colors.green),

            focusColor: Colors.indigo,
            hoverColor: Colors.orange,
            overlayColor: MaterialStateProperty.all(Colors.purple),
            splashRadius: 100.0,
            //     tristate: null,
            //tristate: true,
            //tristate: false,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
              left: Radius.elliptical(sliderVal1, sliderVal1),
            )),
            onChanged: (bool value) {
              if (value != null) {
                setState(() => this._checkBoxVal = value);
              }
            },
            value: this._checkBoxVal,
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
              maxValue: 10,
              minValue: 1,
              divide: 10,
              propText: '   shape:',
              sliderVal: sliderVal1,
              onValueChange: (onChange) {
                setState(() {
                  sliderVal1 = onChange;
                });
              }),
        ]),
      ),
    );
  }
}
