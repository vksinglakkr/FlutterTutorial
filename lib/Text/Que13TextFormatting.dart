// lib\Text\Que13TextFormatting.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que13TextFormatting extends StatefulWidget {
  @override
  _Que13TextFormattingState createState() => new _Que13TextFormattingState();
}

class _Que13TextFormattingState extends State<Que13TextFormatting> {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que13.png";
  final String video1 = "";

  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text => result as per Conditional Statement'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            //  Text("Button tapped $_counter time${_counter <= 1 ? '' : 's'}."),
            ElevatedButton(
              // onPressed: () {
              //   setState(() {
              //     _counter++;
              //   });
              // },
              onPressed: () {
                setState(() => _counter++);
              },
              //onPressed: _increase,
              //void _increase() {setState(()=>_counter++);},
              child: Text(
                  "Button tapped $_counter time${_counter <= 1 ? '' : 's'}."),
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
