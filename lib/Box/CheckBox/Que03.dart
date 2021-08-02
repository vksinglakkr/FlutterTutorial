//lib/Box/CheckBox/Que03.dart
//Arun
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  Color activeColor = Colors.red;
  Color checkColor = Colors.green;
  bool _checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic checkBox'),
      ),
      body: Center(
        child: Container(
          child: Checkbox(
            activeColor: activeColor,
            checkColor: checkColor,
            fillColor: MaterialStateProperty.all(Colors.green),

            focusColor: Colors.indigo,
            hoverColor: Colors.orange,
            overlayColor: MaterialStateProperty.all(Colors.purple),
            splashRadius: 10.0,
            //     tristate: null,
            //tristate: true,
            //tristate: false,
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
          CustColor(
            propText: "   activeColor:",
            startColor: activeColor,
            onValueChange: (value) {
              setState(() {
                activeColor = value;
              });
            },
          ),
          CustColor(
            propText: "   checkColor:",
            startColor: checkColor,
            onValueChange: (value) {
              setState(() {
                checkColor = value;
              });
            },
          )
        ]),
      ),
    );
  }
}
