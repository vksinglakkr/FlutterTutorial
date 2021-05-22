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
            title: Text(
                'Switch \n  How to change the Color of Icon at run time',
                style: TextStyle(fontSize: 16.0))),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Icon(
                  Icons.lightbulb_outline,
                  color: _toggle ? Colors.orange : null,
                  size: 200,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Switch(
                    value: _toggle,
                    onChanged: (bool value) {
                      setState(() => _toggle = value);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
