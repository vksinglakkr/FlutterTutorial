import 'package:flutter/material.dart';

class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  bool _toggle = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('activeTrackColor: Colors.amber'),
        ),
        body: Center(
          child: Container(
            child: Switch(
                value: _toggle,
                activeTrackColor: Colors.amber,
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                activeThumbImage: AssetImage('/assets/VKSINGLA.jpg'),
                onChanged: (bool value) {
                  setState(() => _toggle = value);
                }),
          ),
        ),
      ),
    );
  }
}
