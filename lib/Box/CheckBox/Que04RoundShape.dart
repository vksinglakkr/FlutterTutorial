//lib/Box/CheckBox/Que03.dart
//Arun
import 'package:flutter/material.dart';

class Que04 extends StatefulWidget {
  @override
  _Que04State createState() => _Que04State();
}

class _Que04State extends State<Que04> {
  bool _checkBoxVal = true;

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
            onChanged: (bool value) {
              if (value != null) {
                setState(() => this._checkBoxVal = value);
              }
            },
            value: this._checkBoxVal,
          ),
        ),
      ),
    );
  }
}
