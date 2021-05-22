// HomeScreen.dart

import 'package:flutter/material.dart';

//import './SecondScreen.dart';

class Que04 extends StatefulWidget {
  @override
  _Que04State createState() => _Que04State();
}

class _Que04State extends State<Que04> {
  bool _toggle1 = false;
  bool _toggle2 = false;
  bool _toggle3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light on/Off'),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              child: Icon(
                Icons.lightbulb,
                color: _toggle1 ? Colors.orange : null,
                size: 100,
              ),
            ),
            Container(
              child: Icon(
                Icons.lightbulb,
                color: _toggle2 ? Colors.orange : null,
                size: 100,
              ),
            ),
            Container(
              child: Icon(
                Icons.lightbulb,
                color: _toggle3 ? Colors.orange : null,
                size: 100,
              ),
            ),
          ]),
          Container(
            height: 200,
            child: ListView(
              children: [
                SwitchListTile(
                    secondary: Icon(Icons.lightbulb),
                    title: Text("SwitchListTile 1"),
                    value: _toggle1,
                    onChanged: (bool value) {
                      setState(() => _toggle1 = value);
                    }),
                SwitchListTile(
                    secondary: Icon(Icons.lightbulb),
                    title: Text("SwitchListTile 2"),
                    value: _toggle2,
                    onChanged: (bool value) {
                      setState(() => _toggle2 = value);
                    }),
                SwitchListTile(
                    secondary: Icon(Icons.lightbulb),
                    title: Text("SwitchListTile 3"),
                    value: _toggle3,
                    onChanged: (bool value) {
                      setState(() => _toggle3 = value);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
