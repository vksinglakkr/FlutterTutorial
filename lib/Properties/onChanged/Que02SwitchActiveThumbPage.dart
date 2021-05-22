import 'package:flutter/material.dart';

class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
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
