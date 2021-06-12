// \lib\Text\Que11TextMarquee.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que11Marquee extends StatefulWidget {
  @override
  _Que11MarqueeState createState() => new _Que11MarqueeState();
}

class _Que11MarqueeState extends State<Que11Marquee> {
  final String url1 = "";
  final String image1 = "assets/help/Text/Que11.png";
  final String video1 = "";

  int _counter = 0;
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
              onPressed: () => {
                setState: () {
                  _counter = _counter + 1;
                }
              },
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
