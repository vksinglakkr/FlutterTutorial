import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class BorderExample extends StatefulWidget {
  @override
  BorderExampleState createState() {
    return new BorderExampleState();
  }
}

class BorderExampleState extends State<BorderExample> {
  final String url1 =
      "https://medium.com/flutter-community/flutter-animatedcontainer-widget-ede30bd98931";
  var _myValue = 0.0;
  final _myNewValue = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated \nBorder Width")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Container(
        padding: EdgeInsets.all(80),
        alignment: Alignment.bottomCenter,
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.red, width: _myValue)),
          duration: Duration(seconds: 5),
          height: 200,
          width: 200.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              if (_myValue == _myNewValue) {
                _myValue = 0;
              } else {
                _myValue = _myNewValue;
              }
            });
          },
          icon: Icon(Icons.graphic_eq_outlined),
          label: Text("Change Border")),
    );
  }
}
