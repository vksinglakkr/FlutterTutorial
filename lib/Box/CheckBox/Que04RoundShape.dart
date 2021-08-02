//lib/Box/CheckBox/Que03.dart
//Arun
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que04 extends StatefulWidget {
  @override
  _Que04State createState() => _Que04State();
}

class _Que04State extends State<Que04> {
  bool _checkBoxVal = false;
  double sliderVal1 = 2;

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
            shape: CircleBorder(),
            // RoundedRectangleBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(sliderVal1))),
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
