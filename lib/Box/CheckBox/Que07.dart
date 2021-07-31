//lib/Box/CheckBox/Que03.dart
//Arun
import 'package:flutter/material.dart';

class Que07 extends StatefulWidget {
  @override
  _Que07State createState() => _Que07State();
}

class _Que07State extends State<Que07> {
  bool _checkBoxVal = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        checkboxTheme: Theme.of(context).checkboxTheme.copyWith(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            side: BorderSide(
                width: 1.5, color: Theme.of(context).unselectedWidgetColor),
            splashRadius: 0),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme checkBox'),
        ),
        body: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  onChanged: (bool value) {
                    if (value != null) {
                      setState(() => this._checkBoxVal = value);
                    }
                  },
                  value: this._checkBoxVal,
                ),
                Checkbox(
                  onChanged: (bool value) {
                    if (value != null) {
                      setState(() => this._checkBoxVal = value);
                    }
                  },
                  value: this._checkBoxVal,
                ),
                Checkbox(
                  onChanged: (bool value) {
                    if (value != null) {
                      setState(() => this._checkBoxVal = value);
                    }
                  },
                  value: this._checkBoxVal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
