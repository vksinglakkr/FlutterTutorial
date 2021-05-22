import 'package:flutter/material.dart';

class Que07 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que07> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Switch'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Transform.scale(
              scale: 2,
              child: SizedBox(
                width: 75,
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() => isSwitched = value);
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
