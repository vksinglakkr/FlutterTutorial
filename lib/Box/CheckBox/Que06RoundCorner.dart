//lib/Box/CheckBox/Que06RoundCorner.dart
//Arun
import 'package:flutter/material.dart';

class Que06 extends StatefulWidget {
  @override
  _Que06State createState() => _Que06State();
}

class _Que06State extends State<Que06> {
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
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.elliptical(10, 10))),
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
