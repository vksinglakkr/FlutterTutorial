// lib/Properties\onPressed\Que13setStateThreeWays.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que13TextFormatting extends StatefulWidget {
  @override
  _Que13TextFormattingState createState() => new _Que13TextFormattingState();
}

class _Que13TextFormattingState extends State<Que13TextFormatting> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;

  void incrementCounter() {
    setState(() {
      _counter3++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: new Text('setState in 3 Ways'),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView(
            children: [
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter1++;
                  });
                },
                child: Text(
                    "Button tapped $_counter1 time${_counter1 <= 1 ? '' : 's'}."),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() => _counter2++);
                },
                child: Text(
                    "Button tapped $_counter2 time${_counter2 <= 1 ? '' : 's'}."),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                //   onPressed: _increase() {setState(()=>_counter++);},
                onPressed: () => {incrementCounter()},
                child: Text(
                    "Button tapped $_counter3 time${_counter3 <= 1 ? '' : 's'}."),
              ),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
