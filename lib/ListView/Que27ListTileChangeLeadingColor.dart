import 'package:flutter/material.dart';

class Que27 extends StatefulWidget {
  @override
  _Que27State createState() => _Que27State();
}

class _Que27State extends State<Que27> {
  bool _toggle1 = false;
  bool _toggle2 = false;
  bool _toggle3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Light on/Off'),
          ),
          body: ListView(
            children: [
              ListTile(
                leading: _toggle1
                    ? Icon(Icons.lightbulb, color: Colors.red)
                    : Icon(Icons.lightbulb_outline),
                title: Text("ListTile 1"),
                trailing: Switch(
                    value: _toggle1,
                    onChanged: (bool value) {
                      setState(() => _toggle1 = value);
                    }),
              ),
              ListTile(
                leading: _toggle2
                    ? Icon(Icons.lightbulb, color: Colors.red)
                    : Icon(Icons.lightbulb_outline),
                title: Text("ListTile 2"),
                trailing: Switch(
                    value: _toggle2,
                    onChanged: (bool value) {
                      setState(() => _toggle2 = value);
                    }),
              ),
              ListTile(
                leading: _toggle3
                    ? Icon(Icons.lightbulb, color: Colors.red)
                    : Icon(Icons.lightbulb_outline),
                title: Text("ListTile 3"),
                trailing: Switch(
                    value: _toggle3,
                    onChanged: (bool value) {
                      setState(() => _toggle3 = value);
                    }),
              ),
            ],
          ),
        ));
  }
}
