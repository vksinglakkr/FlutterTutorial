// /lib/Dropdown/Que06.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que06 extends StatefulWidget {
  @override
  _Que06State createState() => _Que06State();
}

class _Que06State extends State<Que06> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dropdown Button"),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  value: 1,
                  child: Text("First Item"),
                ),
                DropdownMenuItem(
                  child: Text("Second Item"),
                  value: 2,
                ),
                DropdownMenuItem(child: Text("Third Item"), value: 3),
                DropdownMenuItem(child: Text("Fourth Item"), value: 4)
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        ));
  }
}
