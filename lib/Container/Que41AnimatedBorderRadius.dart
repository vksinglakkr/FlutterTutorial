import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class BorderRadiusExample extends StatefulWidget {
  @override
  BorderRadiusExampleState createState() {
    return new BorderRadiusExampleState();
  }
}

class BorderRadiusExampleState extends State<BorderRadiusExample> {
  final String url1 =
      "https://medium.com/flutter-community/flutter-animatedcontainer-widget-ede30bd98931";

  var _myValue = 0.0;
  final _myNewValue = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated \nBorder Radius")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Container(
        padding: EdgeInsets.all(30),
        alignment: Alignment.center,
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.red, width: 30),
            borderRadius: BorderRadius.circular(_myValue),
          ),
          duration: Duration(seconds: 2),
          height: 200,
          width: 280.0,
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
          label: Text("Change Radius")),
    );
  }
}
