import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class GraphExample extends StatefulWidget {
  @override
  GraphExampleState createState() {
    return new GraphExampleState();
  }
}

class GraphExampleState extends State<GraphExample> {
  var _height = 50.0;
  final String url1 =
      "https://medium.com/flutter-community/flutter-animated-series-animated-containers-52a5d52c0ad3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Animated Graph")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Container(
        padding: EdgeInsets.all(80),
        alignment: Alignment.bottomCenter,
        child: AnimatedContainer(
          duration: Duration(seconds: 5),
          color: Colors.red,
          height: _height,
          width: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            setState(() {
              _height = 250.0;
            });
          },
          icon: Icon(Icons.graphic_eq_outlined),
          label: Text("Increase")),
    );
  }
}
