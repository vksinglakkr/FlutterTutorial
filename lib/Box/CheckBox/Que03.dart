//lib/Box/CheckBox/Que03.dart
//Arun
import 'package:flutter/material.dart';

class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  bool _checkBoxVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic checkBox'),
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
