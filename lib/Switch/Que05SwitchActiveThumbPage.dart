import 'package:flutter/material.dart';

class Que05 extends StatefulWidget {
  @override
  _Que05State createState() => _Que05State();
}

class _Que05State extends State<Que05> {
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Switch(
                value: _toggle,
                activeThumbImage:
                    _toggle ? AssetImage("assets/images/kkr.png") : null,
                onChanged: (bool value) {
                  setState(() => _toggle = value);
                }),
          ),
        ),
      ),
    );
  }
}
