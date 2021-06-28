// lib/Text\Que02textColor.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que02Text11 extends StatefulWidget {
  @override
  _Que02Text11State createState() => new _Que02Text11State();
}

class _Que02Text11State extends State<Que02Text11> {
  final String image1 = "assets/help/Text/Que02.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Text => Color Property")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView(
          children: [
            Card(
              elevation: 5,
              color: Colors.deepPurple[300],
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //color: Colors.red.shade400,
                  //color: Colors.blue[300],
                  //color: Colors.red.withAlpha(80),
                  //color: Color(0xFFB78093),
                  //colors: [Color(0xFFF58174c),Color(0xFFF2055c)] in case of Gradient
                  //colors: Colors.red.withOpacity(0.1)
                  //using ARGB (Alpha Red Green Blue)
                  //color: Color.fromARGB(255, 255, 0, 0),
                  //using RGBO (Red Green Blue Opacity)
                  //color: Color.fromRGBO(0, 155, 0, 0.8),
                  //color: Colors.transparent,
                  //color: msgCount[index] >= 10 ? Colors.blue[400] : msgCount[index] > 3 ? Colors.blue[100] : Colors.grey,
                  Text(
                    'style:TextStyle(color: Color.red,)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
                child: new Column(
              children: <Widget>[
                //default color
                SizedBox(height: 10),
                new Text(
                  'Text without color.',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                new Text(
                  'color: Colors.blue',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                Text(
                    "Next is the example of Transparent i.e. \ncolor: Colors.transparent"),
                Text(
                  'color: Colors.transparent',
                  style: TextStyle(
                    color: Colors.transparent,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'color: Color.fromARGB(255, 255, 0, 0)',
                  style: TextStyle(
                    //using ARGB (Alpha Red Green Blue)
                    color: Color.fromARGB(255, 255, 0, 0),
                    fontSize: 20,
                  ),
                ),
                Text(
                  'color: Color.fromRGBO(0, 155, 0, 0.8)',
                  style: TextStyle(
                    //using RGBO (Red Green Blue Opacity)
                    color: Color.fromRGBO(0, 155, 0, 0.8),
                    fontSize: 20,
                  ),
                ),
                Text(
                  'color: Colors.red.shade900',
                  style: TextStyle(
                    color: Colors.red.shade900,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'color: Colors.blue[200]',
                  style: TextStyle(
                    color: Colors.blue[200],
                    fontSize: 20,
                  ),
                ),
                Text(
                  'color: Colors.red.withAlpha(80)',
                  style: TextStyle(
                    color: Colors.red.withAlpha(80),
                    fontSize: 20,
                  ),
                ),
                Text(
                  'color: Color(0xFFB78093)',
                  style: TextStyle(
                    color: Color(0xFFB78093),
                    fontSize: 20,
                  ),
                ),
                Text(
                  'color: Colors.red.withOpacity(0.1)',
                  style: TextStyle(
                    color: Colors.red.withOpacity(0.2),
                    fontSize: 20,
                  ),
                ),
              ],
            )),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
