import 'package:flutter/material.dart';

class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
  int _radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons'),
      ),
      body: Center(
        child: Container(
          width: 300,
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [0, 1, 2, 3, 4]
                .map((int index) => Radio<int>(
                      value: index,
                      groupValue: this._radioVal,
                      onChanged: (int value) {
                        if (value != null) {
                          setState(() => this._radioVal = value);
                        }
                      },
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
